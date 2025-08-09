.PHONY: help install serve build clean deploy

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

install: ## Install dependencies
	pip install -r requirements.txt

serve: ## Serve the documentation locally with auto-reload
	mkdocs serve

build: ## Build the static HTML files
	mkdocs build

clean: ## Clean the build directory
	rm -rf site/

deploy: ## Deploy to GitHub Pages
	mkdocs gh-deploy --clean

check: ## Check the configuration
	mkdocs build --strict
