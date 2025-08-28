# Zsh Setup

This repository contains a personalized, modular Zsh configuration that can be easily deployed to any new terminal environment. It uses the [Zinit](https://github.com/zdharma-continuum/zinit) plugin manager for speed and flexibility.

This setup now also manages your Powerlevel10k (`.p10k.zsh`) and Tmux (`.tmux.conf`) configurations.

## 🚀 Features

- **Modular:** Configuration is split into logical files within the `zsh.d/` directory.
- **Portable:** Easily clone and set up on a new machine with a single script.
- **Fast:** Uses Zinit for efficient plugin management.
- **Includes:**
    - Powerlevel10k prompt
    - Fast Syntax Highlighting
    - Autosuggestions
    - fzf, zoxide, and more!

## 🛠️ Installation

**Important:** For seamless updates with `git pull`, it is highly recommended to clone this repository to the `~/.zshconfig` directory.

To set up your Zsh environment using this configuration, follow these steps:

1.  **Clone the repository:**

    ```bash
    git clone <repository-url> ~/.zshconfig
    cd ~/.zshconfig
    ```

2.  **Run the setup script:**

    This script will:
    - Back up your existing `~/.zshrc` file to `~/.zshrc.bak` if one exists.
    - Create a symbolic link from `~/.zshrc` to the `zshrc` file in this repository.
    - Install the Zinit plugin manager if it's not already present.

    ```bash
    ./setup.sh
    ```

3.  **Restart your shell:**

    For the changes to take effect, you need to restart your terminal or source the new configuration:

    ```bash
    source ~/.zshrc
    ```

And you're all set! 🎉

## ⚙️ Customization

To customize the configuration, you can edit the files in the `zsh.d/` directory:

- `00-options.zsh`: General Zsh options.
- `10-exports.zsh`: Environment variable exports.
- `20-sdks.zsh`: SDK and version manager configurations (like NVM).
- `30-paths.zsh`: `PATH` declarations.
- `40-aliases.zsh`: Command aliases.
- `50-functions.zsh`: Custom shell functions.

After making changes, simply restart your shell for them to apply.
