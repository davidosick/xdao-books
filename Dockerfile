# Многоэтапный Dockerfile для сборки MkDocs и развертывания с nginx

# ================================
# Этап 1: Сборка документации
# ================================
FROM python:3.11-slim AS builder

# Установка системных зависимостей
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Установка Python зависимостей
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Создание рабочей директории
WORKDIR /app

# Копирование исходных файлов документации
COPY mkdocs.yml ./
COPY docs/ ./docs/

# Сборка статического сайта
RUN mkdocs build --clean --strict

# ================================
# Этап 2: Настройка nginx
# ================================
FROM nginx:1.29-alpine3.22

# Установка дополнительных пакетов для nginx
RUN apk add --no-cache \
    curl \
    tzdata

# Удаление дефолтной конфигурации nginx
RUN rm -rf /etc/nginx/conf.d/default.conf \
    && rm -rf /usr/share/nginx/html/*

# Копирование собранного сайта из первого этапа
COPY --from=builder /app/site /var/www/xdao-books/site

# Копирование конфигурации nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Создание директорий для логов
RUN mkdir -p /var/log/nginx

# Создание пользователя nginx (если не существует)
RUN addgroup -g 101 -S nginx || true \
    && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx || true

# Настройка прав доступа
RUN chown -R nginx:nginx /var/www/xdao-books/site \
    && chown -R nginx:nginx /var/log/nginx \
    && chmod -R 755 /var/www/xdao-books/site

# Проверка конфигурации nginx
RUN nginx -t

# Экспорт порта
EXPOSE 80

# Добавление healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Запуск nginx в foreground режиме
CMD ["nginx", "-g", "daemon off;"]

# Метаданные образа
LABEL maintainer="XDAO Team"
LABEL description="XDAO Documentation built with MkDocs and served with nginx"
LABEL version="1.0"
