## Setting up the development environment

This document provides instructions for setting up the development environment for this project. 

## With Devenv

This project uses [Devenv](https://devenv.sh/) to provide a consistent and reproducible development environment for all contributors. Devenv is built on top of Nix, which allows us to define the exact dependencies and tools needed for development in a declarative way.

To install Devenv, you first need to have Nix installed on your system. You can follow the instructions at [nixos.org](https://nixos.org/download.html) to install Nix. Once you have Nix installed, you can install Devenv by running the following command:

```bash
nix profile install nixpkgs#devenv
```

To confirm that Devenv is installed correctly, you can run:

```bash
devenv --version
```

### Direnv

[Direnv](https://direnv.net/) allows to automatically load the Devenv environment when you `cd` into the project directory, as well as simplify the management of project level environment variables. While direnv is not stricly required, is recomended. To install it and integrate with your shell, follow the instructions at [direnv.net](https://direnv.net/docs/installation.html).

### Starting the Devenv shell

Start by cding into the project directory:

```bash
cd {{ project_name }}
```

If you have installed direnv, you should be prompted to allow the `.envrc` file in the project directory. This file contains the configuration for the Devenv environment. By allowing it, you are granting permission for direnv to load the Devenv environment whenever you enter the project directory.
A devenv shell should be automatically loaded, after running `direnv allow`.

You can verify that you are in the Devenv shell by checking the output of  `which rustc`. If you see a path like `/nix/store/.../bin/rustc`, then you are in the Devenv shell.

If you are not using Direnv or if devenv shell was not properly loaded, you can manually start the Devenv shell by running:

```bash
devenv shell
```

That´s it! You should now have a fully set up development environment for the project.

## With Devcontainers

Alternatively to devenv you can also use [Devcontainers](https://containers.dev/). This is particulary useful if you are using a cloud based development environment, like GitHub Codespaces or Gitpod, which have built in support for Devcontainers.

### Development workflow

### Building the project

To build the project, you can use the following command:

```bash
task build
```

During development, you can also use `cargo watch` to automatically rebuild the project whenever you make changes to the code. To do this, run the following command:

```bash
task watch
```

### Running Linters and Tests

To run the linters, you can use the following command:

```bash
task lint
```

To run the tests, you can use the following command:

```bash
task test
```

### Task runner

The project uses [Taskfile](https://taskfile.dev/) as a task runner to simplify the execution of common tasks during development, like running linters or tests.

To run a task, use the following command:

```bash
task <task_name>
```

The following tasks are available:

| Task Name | Description                   |
| --------- | ----------------------------- |
| build     | Build the project             |
| test      | Run the tests                 |
| lint      | Run the clippy linter         |
| fmt       | Format the code using rustfmt |
| release   | Create a release build        |

You can list all available tasks by running:

```bash
task -l
```

### Git Commit Hooks

This project uses [Lefthook](https://lefthook.io/) to manage Git commit hooks. Lefthook hooks are automatically installed when you start the Devenv shell.

The following hooks are configured:
- `pre-commit`: Runs code formatting, linters and tests before each commit.
- `pre-push`: Runs commitlint to ensure commit messages follow the conventional commit format.
