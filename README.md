# XDAO TON Documentation

Documentation for XDAO TON - a Telegram-native WebApp for creating and managing DAOs on the TON blockchain.

## Installation and Launch

### Requirements

- Python 3.8+
- pip

### Installing Dependencies

```bash
# Install dependencies
pip install -r requirements.txt
```

### Local Development

```bash
# Start a local server with auto-reloading
mkdocs serve
```

The site will be available at: http://127.0.0.1:8000

### Building HTML Files

```bash
# Build static HTML files into the site/ directory
mkdocs build
```

### Deploying to GitHub Pages

```bash
# Automatically deploy to GitHub Pages
mkdocs gh-deploy --clean
```

## Project Structure

```
.
├── docs/                 # Source markdown files
│   ├── README.md         # Main page
│   ├── SUMMARY.md        # Table of contents (not used in MkDocs)
│   ├── architecture/     # Architecture documentation
│   ├── guides-for-gt/    # User guides
│   └── basics/          # Basic information
├── mkdocs.yml           # MkDocs configuration
├── requirements.txt     # Python dependencies
└── site/               # Built HTML files (auto-generated)
```


## Editing the Documentation

1. All markdown files are located in the `docs/` folder.
2. Navigation is configured in `mkdocs.yml` in the `nav:` section.
3. After making changes, run `mkdocs serve` to preview.

## Ссылки

- [MkDocs Documentation](https://www.mkdocs.org/)
- [Material Theme](https://squidfunk.github.io/mkdocs-material/)
- [GitHub Repository](https://github.com/davidosick/xdao-books)
