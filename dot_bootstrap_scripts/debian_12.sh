#!/bin/bash

#assumes user jheidecker wtih sudo access

sudo apt install -y zsh exa git curl fzf flatpak neovim
sudo chsh -s /bin/zsh jheidecker
curl -sS https://starship.rs/install.sh | sh
sh -c "$(curl -fsLS get.chezmoi.io)"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.wezfurlong.wezterm
bin/chezmoi init --apply jheidecker


#Include ssh secrets
#needs bitwarden-cli < arm64 issues
#Neovim issues Debian too old


#flatpak run org.wezfurlong.wezterm

#aarch64 and parallels issues
#nmcli con mod 'Wired connection 1' ipv4.dns-options "single-request-reopen"
#nmcli con up 'Wired connection 1'
