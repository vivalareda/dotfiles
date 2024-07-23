#!/bin/bash

# Ensure the path to the dotfiles repository is provided
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/dotfiles-repo"
  exit 1
fi

DOTFILES_REPO=$1

# Navigate to the home directory
cd ~

# Create symlinks for .gitconfig and .zshrc files
ln -sf "$DOTFILES_REPO/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_REPO/.gitconfig" ~/.gitconfig

# Verify the symlinks
echo "Verifying symlinks:"
ls -l ~/.zshrc
ls -l ~/.gitconfig

# Source the .zshrc file
source ~/.zshrc
echo ".zshrc sourced"

# Authenticate with GitHub CLI
echo "Authenticating with GitHub CLI..."
gh auth login

echo "Setup completed."
