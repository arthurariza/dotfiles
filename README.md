# Personal Dotfiles

macOS development environment managed with a single install script. Safe to re-run — the install script is idempotent.

## Quick Start

```bash
git clone git@github.com:arthurariza/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bin/install
```

## What It Does

The install script will:

1. Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
2. Install [Homebrew](https://brew.sh) and packages from the Brewfile
   - Git
   - VsCode
   - Postman
   - Arc Browser
   - Alacritty
   - Table Plus
   - Spotify
   - Rancher Desktop
   - Tmux
3. Create symlinks for all configs to their expected locations
4. Set up [rbenv](https://github.com/rbenv/rbenv) for Ruby version management
5. Install [nvm](https://github.com/nvm-sh/nvm) for Node version management

## Structure

```
home/
  .zshrc            # Zsh config (Oh My Zsh)
  .gitconfig        # Git config with conditional work profile
  .vimrc            # Vim defaults
  Brewfile          # Homebrew dependencies
config/
  alacritty/        # Alacritty terminal
  tmux/             # Tmux
  vscode/           # VS Code settings & keybindings
bin/
  install           # Main install script
  rbenv-init        # Ruby environment setup
  brew-bundle-dump  # Export Homebrew state to Brewfile
```