#!/bin/bash
gum spin -s line --title "Installing fnm" -- sleep 0.5

CURRENT_PATH="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

if ! command -v fnm &>/dev/null; then
  gum spin -s line --title "Installing fnm" -- sleep 0.5
  curl -fsSL https://fnm.vercel.app/install | bash
fi

if ! command -v node &>/dev/null; then
  source "$CURRENT_PATH"/node/node.sh
else
  gum style --foreground "#00FF9C" "Node is already installed."
fi
