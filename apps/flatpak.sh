#!/bin/bash

if ! command -v flatpak --version &>/dev/null; then
  gum style --foreground "#00FF9C" "Installing Flatpak..."
  echo "$CURRENT_DISTRO"
  if [ "$CURRENT_DISTRO" = "Ubuntu" ]; then
    sudo add-apt-repository ppa:flatpak/stable
    sudo apt update
  fi

  sudo apt install flatpak
  sudo apt install gnome-software-plugin-flatpak
  flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
  return
fi

gum style --foreground "#00FF9C" "Flatpak is already installed."
