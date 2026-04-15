# Personal Dotfiles

Hello! Here are my personal dotfiles.

## Includes

- `home/.zshrc`: Personal config for [oh my zsh](https://github.com/ohmyzsh/ohmyzsh). For reference, you can find the original `.zshrc` file [here](https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template).
- `home/.gitconfig`: Git configuration with conditional work profile support.
- `home/.vimrc`: Vim configuration with sensible defaults.
- `home/Brewfile`: Homebrew dependencies.
- `config/alacritty/alacritty.toml`: Alacritty terminal configuration.
- `config/tmux/tmux.conf`: Tmux configuration.
- `config/vscode/settings.json`: VS Code settings.
- `config/vscode/keybindings.json`: VS Code keybindings.

## Quick Start

```bash
git clone git@github.com:arthurariza/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bin/install
```

The install script will create symlinks for all configs to their expected locations.