These are my dotfiles and configurations for some of the programs I use. In general the configurations are optimized for a system running macOS, with iTerm2, fish, neovim, git and Homebrew.

# Install

The files are managed by `stow`, so basically:

1. Clone the repository:

```shell
git clone https://github.com/anderkonzen/dotfiles.git ~/.dotfiles
```

2. Setup `stow`: 

```shell
cd .dotfiles
stow -t ~ stow
```

The stow directory should be the first one so the stow configuration is installed properly (global ignore files, etc).

3. Install the desired package with `stow <dir>`

# Conventions

Directories starting with a `_` are not supposed to be *stowed*.

# Requirements

Prior to symlink the directories, I recommend installing all the apps declared in the `_homebrew/Brewfile`:

```shell
cd ~/.dotfiles/_homebrew
brew bundle
```

this will install `stow` and other necessary apps. Of course, you need [`brew`](https://brew.sh) installed to run this command.

## fish

If you already use fish as your shell, the symlink of the fish directory might not work because `~/.config/fish` probably already exists. In this case you can delete or backup this directory before running `stow fish`.

# Configuring other apps

## git

Use `~/.gitconfig.local` to store sensitive data like git credentials and other local configurations. For instance:

```shell
[user]
    name = Anderson Konzen
    email = anderkonzen@example.com
```

## neovim

### Themes

Use `~/.vimrc_background` to have local settings for the colorscheme. For example:

```shell
# ~/.vimrc_background

" colorscheme base16-tomorrow-night

" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme ayu
```

### deoplete.vim

I am using [deoplete.vim](https://github.com/Shougo/deoplete.nvim) to have omni auto-complete for a few languages (ruby, elixir and javascript). In order to have all this working, you need to have python3 and node.js installed (already covered in the brew bundle).

Before installing the plugin in neovim, you also need to install the neovim-python module with:

```sh
pip3 install --user neovim
```

Then, in neovim, execute `:PlugInstall` and then `:UpdateRemotePlugins`. You can check if everything is working fine with `:CheckHealth`.

Note: for javascript the plugin installs [ternjs](http://ternjs.net/), so you also need node installed in your system.

# Acknowledgements

The work on this repo is inspired and based on other great configurations. Below you will find some of the people/repos I took ideas from to create my own stuff:

* https://github.com/Kraymer/F-dotfiles
* http://dotfiles.github.io

