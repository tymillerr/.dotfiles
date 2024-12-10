# Repository Overview

This repository contains configuration files, scripts, and a `Makefile` to streamline Linux environment setup and cleanup. Below is a description of each file:

## Scripts
- **bin/linux.sh**: Sets up the environment by creating a `.TRASH` directory, configuring the `.nanorc` file, and adding custom configurations to `.bashrc`.
- **bin/cleanup.sh**: Cleans up the environment by removing the `.TRASH` directory, `.nanorc` file, and custom configurations from `.bashrc`.

## Configuration Files
- **.nanorc**: Configures the `nano` text editor with custom settings for better usability.
- **etc/bashrc custom**: Adds custom shell configurations for personalized behavior in the terminal.

## Makefile
- **linux target**: Runs the `linux.sh` script to set up the environment.
- **clean target**: Runs the `cleanup.sh` script to clean up the environment.
- **Dependency**: The `linux` target depends on the `clean` target to ensure a fresh setup.
