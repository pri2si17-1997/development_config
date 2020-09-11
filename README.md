# Devlopment Config using Vim and Tmux

## VIM version

```bash
VIM - Vi IMproved 8.1 (2018 May 18, compiled Apr 15 2020 06:40:31)
Included patches: 1-2269
```

## Tmux Version

```bash
tmux 3.0a
```

## Install Nerd Fonts

- Make `~/.fonts` directory. 

- Run `wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip` inside `~/.fonts` directory.

- Run `unzip DroidSansMono.zip`.

- Reload cache. `fc-cache -fv`

## Install vim-plug

- Using `vim-plug` as plugin manager.

- Run `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

## Steps

- Copy `.vimrc` and `.tmux.conf` to the home directory.

- Make sure `tmux` and `vim-plug` is installed.

- To install plugins, run `:PlugInstall` in `Vim`.

- To run `tmux`, use `tmux -u` so that it do not mess with `Vim`.