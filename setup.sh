#!/bin/bash
set -e # Exit on error

# Define paths
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FILES=( "zshrc" "p10k.zsh" "tmux.conf" )
ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

echo "🚀 Starting Dotfiles Setup..."
echo "Repository directory: $REPO_DIR"

# 1. Create symlinks for configuration files
echo ""
echo "----------------------------------------"
echo "Step 1: Creating symlinks"
echo "----------------------------------------"
for config_file in "${CONFIG_FILES[@]}"; do
    SOURCE_PATH="$REPO_DIR/${config_file/p10k.zsh/.p10k.zsh}"
    SOURCE_PATH="$REPO_DIR/${config_file/tmux.conf/.tmux.conf}"
    SYMLINK_PATH="$HOME/.$config_file"

    echo "Processing $SYMLINK_PATH..."

    if [ -L "$SYMLINK_PATH" ] && [ "$(readlink "$SYMLINK_PATH")" = "$SOURCE_PATH" ]; then
        echo "✅ Symlink already exists and is correct."
    else
        if [ -e "$SYMLINK_PATH" ]; then
            echo "⚠️  Found existing .$config_file. Backing it up to .$config_file.bak..."
            mv "$SYMLINK_PATH" "$SYMLINK_PATH.bak"
        fi
        ln -s "$SOURCE_PATH" "$SYMLINK_PATH"
        echo "✅ Symlink created at $SYMLINK_PATH"
    fi
done

# 2. Install Zinit if not present
echo ""
echo "----------------------------------------"
echo "Step 2: Checking for Zinit installation"
echo "----------------------------------------"
if [ ! -d "$ZINIT_HOME" ]; then
    echo "🔎 Zinit not found. Installing..."
    mkdir -p "$(dirname "$ZINIT_HOME")"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
    echo "✅ Zinit installed successfully."
else
    echo "✅ Zinit is already installed."
fi

echo ""
echo "🎉 Setup complete!"
echo "Please restart your shell or run 'source ~/.zshrc' to apply the changes."
