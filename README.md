# dotfiles

## Usage

Review the bootstrap scripts.

To pull ssh-private-keys with `chezmoi update`, bitwarden-cli (bw) must be installed, logged in, and unlocked with BW_SESSION set.

## Cross-Platform/Shell Goals

Use [chezmoi](https://www.chezmoi.io) to harmonize all the things.

Primary:

- [starship](https://starship.rs)
- [neovim](https://neovim.io) (w/[lazy](https://github.com/folke/lazy.nvim) and [copilot](https://copilot.github.com))
- [wezterm](https://wezfurlong.org/wezterm/index.html)
- common color theme: [catppucchin-mocha](https://github.com/catppuccin/catppuccin)
- common f/w font: [firacode nerd 3.0.2](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip)
- ssh private keys (requires [bw-cli](https://bitwarden.com/help/cli/))

Settings Sync Outside of dotfiles:

- [vscode](https://code.visualstudio.com) (w/[copilot](https://copilot.github.com))
- [vivaldi](https://vivaldi.com)

Secondary:

- automated bootstrap
- exa replaces ls/dir
- fzf for history and completions
- podman
- email / notes
- oc, kubeadmin, helm
- other cross-platform apps with portable configs
  - 010 editor
  - adobe junk
  - element
  - signal

## Progress Table

All of these are tested with, and require, root or admin access. Mostly for the package managers. If no versions are listed, it means the application updates itself and does not rely on a package manager.

:white_check_mark: : included in dotfiles or settings / no config required
:heavy_check_mark: : tested working settings in dotfiles
:heavy_minus_sign: : not tested
:heavy_multiplication_x: : broken
choco: chocolatey
sa-i : standalone-install

| platform/shell  | chezmoi | starship  | vscode | vscode-copilot | nvim | lazy | wezterm | vivaldi | color theme | font | ssh | bw-cli | bootstrap |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MacOS (M2) Ventura 13.4.1 [[zsh](https://www.zsh.org) 5.9]| :heavy_check_mark: 2.34.3 homebrew | :heavy_check_mark: 1.15.0 homebrew | :heavy_check_mark: sa-i (dmg) | :white_check_mark: | :heavy_check_mark: 0.9.1 LuaJIT 2.1.0-beta3 homebrew  | :white_check_mark: | :heavy_check_mark:  20230712-072601-f4abf8fd homebrew |  :heavy_check_mark: sa-i (dmg) | :white_check_mark: | :white_check_mark: | :white_check_mark: OpenSSH_9.0p1, LibreSSL 3.3.6 | :heavy_check_mark: 2023.7.0 homebrew | :heavy_minus_sign: |
| Windows 11 Enterprise (x64) 10.0.22621 [[pwsh](https://github.com/PowerShell/PowerShell) 7.3.6]  | :heavy_check_mark: 2.35.0 choco | :heavy_check_mark: 1.15.0 choco | :heavy_check_mark: choco | :white_check_mark: | :heavy_check_mark: 0.9.1 LuaJIT 2.1.0-beta3 choco | :white_check_mark: | :heavy_check_mark: 20230712.72601.0 choco | :heavy_check_mark: choco | :white_check_mark: | :heavy_check_mark: choco | :white_check_mark: OpenSSH_for_Windows_8.6p1, LibreSSL 3.4.3 | :heavy_check_mark: 2023.7.0 choco | :heavy_minus_sign: |
| Debian 12 (aarch64) [[zsh](https://www.zsh.org) 5.9] | :heavy_check_mark: 2.35.0 sa-i (curl) | :heavy_check_mark: 1.15.0 sa-i (curl) | :heavy_check_mark: sa-i (dl-deb) | :white_check_mark: | :white_check_mark: | :white_check_mark: | :heavy_check_mark: 20230712-072601-f4abf8fd flatpak | :heavy_check_mark: sa-i (dl-deb) | :white_check_mark: | :white_check_mark: | :white_check_mark: OpenSSH_9.2p1 Debian-2, OpenSSL 3.0.9 | :heavy_check_mark: 2023.7.0 (npm) | :heavy_minus_sign: |
| NixOS Unstable (x64) (Jul 2023) [[zsh](https://www.zsh.org) 5.9] |  :heavy_check_mark: 2.34.3 nixpkgs | 

## TODO
- copilot nvim plugin working on mac, but not documented (or used really.)
- `export XCURSOR_THEME=Adwaita` for debian fix needs to be applied BEFORE launching wezterm
- test various self-contained development environments
- integrate nix, somehow..
- document and test shell enhancements, like fzf, exa, etc.
- also tested on Win11 ARM64 (Parallels on M2)
- portable zsh completions, unified completions (pwsh, zsh, ?)
- script to check dev-env versions (is python the same here before you start developing?)
- autoupdate lazy vim plugins?