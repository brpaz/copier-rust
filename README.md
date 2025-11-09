# copier-rust

<p align="center">

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-black.json&style=for-the-badge)](https://github.com/copier-org/copier)
[![Build Status](https://img.shields.io/github/actions/workflow/status/brpaz/copier-rust/ci.yml?branch=main&style=for-the-badge)](https://github.com/brpaz/copier-rust/actions)

</p>

> A copier template to scafold a Rust project.

## 📦 What is included?

- [Devenv](https://devenv.dev/) configuration for a reproducible development environment using Nix.
- [Direnv](https://direnv.net/) integration for automatic environment loading.
- [Taskfile](https://taskfile.dev/) as a task runner to simplify common development tasks.
- GitHub Actions CI workflow for building, testing, linting, and releasing the project.
- Pre-configured linters and formatters (Clippy and Rustfmt).
- Git commit hooks using [Lefthook](https://lefthook.io/) to enforce code quality before commits.

## 🚀 Getting Started

### Pre-Requisites

This template is built with [Copier](https://copier.readthedocs.io/en/stable/), a Python based project templating tool.

To install copier on your system, follow the instructions at [Copier Website](https://copier.readthedocs.io/en/stable/#installation)

### Usage

To create a new project using this template, run the following command:

```bash
copier copy gh:brpaz/copier-rust /path/to/your/new/project
```

And answer the prompts to customize your new project.

## 🗒️ License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.