# XDAO TON Documentation

Документация для XDAO TON - Telegram-native WebApp для создания и управления DAO на блокчейне TON.

## Установка и запуск

### Требования

- Python 3.8+
- pip

### Установка зависимостей

```bash
# Установка зависимостей
pip install -r requirements.txt
```

### Локальная разработка

```bash
# Запуск локального сервера с автообновлением
mkdocs serve
```

Сайт будет доступен по адресу: http://127.0.0.1:8000

### Сборка HTML файлов

```bash
# Сборка статических HTML файлов в папку site/
mkdocs build
```

### Деплой на GitHub Pages

```bash
# Автоматический деплой на GitHub Pages
mkdocs gh-deploy --clean
```

## Структура проекта

```
.
├── docs/                 # Исходные markdown файлы
│   ├── README.md         # Главная страница
│   ├── SUMMARY.md        # Содержание (не используется в MkDocs)
│   ├── architecture/     # Документация архитектуры
│   ├── guides-for-gt/    # Руководства пользователя
│   └── basics/          # Базовая информация
├── mkdocs.yml           # Конфигурация MkDocs
├── requirements.txt     # Python зависимости
└── site/               # Собранные HTML файлы (автогенерируется)
```


## Редактирование документации

1. Все markdown файлы находятся в папке `docs/`
2. Навигация настраивается в `mkdocs.yml` в секции `nav:`
3. После изменений запустите `mkdocs serve` для предварительного просмотра

## Ссылки

- [MkDocs Documentation](https://www.mkdocs.org/)
- [Material Theme](https://squidfunk.github.io/mkdocs-material/)
- [GitHub Repository](https://github.com/davidosick/xdao-books)
