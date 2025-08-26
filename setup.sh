#!/bin/bash
set -e # Exit on error

# Define paths
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZSHRC_PATH="$REPO_DIR/zshrc"
ZSHRC_SYMLINK="$HOME/.zshrc"
ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

echo "🚀 Starting Zsh Setup..."
echo "Repository directory: $REPO_DIR"

# 1. Create symlink for .zshrc
echo ""
echo "----------------------------------------"
echo "Step 1: Creating symlink for .zshrc"
echo "----------------------------------------"
if [ -L "$ZSHRC_SYMLINK" ] && [ "$(readlink "$ZSHRC_SYMLINK")" = "$ZSHRC_PATH" ]; then
    echo "✅ Symlink already exists and is correct."
else
    if [ -e "$ZSHRC_SYMLINK" ]; then
        echo "⚠️  Found existing .zshrc. Backing it up to .zshrc.bak..."
        mv "$ZSHRC_SYMLINK" "$ZSHRC_SYMLINK.bak"
    fi
    ln -s "$ZSHRC_PATH" "$ZSHRC_SYMLINK"
    echo "✅ Symlink created at $ZSHRC_SYMLINK"
fi

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
