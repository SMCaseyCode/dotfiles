#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.backup_config"

echo "making backup directory $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

# Add dir here that sit in .config/
DOTFILES=(
  "hypr"
  "kitty"
  "waybar"
  "wireplumber"
)

echo "Starting initial dotfile setup..."

# Loop which goes over all DOTFILES
for item in "${DOTFILES[@]}"; do
  src="$DOTFILES_DIR/$item"
  dest="$CONFIG_DIR/$item"

  if [[ ! -e "$src" ]]; then
    echo "$src does not exist. Skipping."
    continue
  fi

  if [[ -e "$dest" && ! -L "$dest" ]]; then
    echo "Backing up $dest"
    mv "$dest" "$BACKUP_DIR/"
  fi

  mkdir -p "$(dirname "$dest")"

  echo "linking $item: $src -> $dest"
  ln -sfn "$src" "$dest"
done

# handle configs that sit in $HOME
# .gitconfig
ln -sf "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"

