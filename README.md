# dotfiles

## mac

- install homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- add to path
- install git `brew install git`
- install bitwarden-cli `brew install bitwarden-cli`
- `bw login`
- `export BW_SESSION=$(bw unlock --raw)`
- install chezmoi `brew install chezmoi`
- `chezmoi init --apply --verbose https://github.com/jheidecker/dotfiles.git`

Test change