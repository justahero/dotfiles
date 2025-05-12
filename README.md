dotfiles
========

A collection of used dotfiles

## Setup

Usually the following packages / tools are useful

* [zsh](https://www.zsh.org/) as the default shell
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), a collection of useful tools / plugins for zsh
  * [zsh-completions](https://github.com/zsh-users/zsh-completions/#oh-my-zsh) plugin
  * [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
  * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) plugin for colored output
* [fzf](https://github.com/junegunn/fzf), a command line fuzzy search, scans command history

Useful Rust tools

* [starship](https://starship.rs/), a customizable prompt for any shell
  * use [`starship.toml`](./starship.toml) to configure the prompt
* [delta](https://github.com/dandavison/delta), a syntax highlighter for pager (git diffs)
* [ripgrep](https://github.com/BurntSushi/ripgrep), a grep alternative written in Rust
* See [this list of command line tools](https://gist.github.com/sts10/daadbc2f403bdffad1b6d33aff016c0a) for more examples

#### Git

A few tools / executables are useful when using Git

* [diff-highlight](https://github.com/git/git/tree/master/contrib/diff-highlight), displays a nicer diff
* [commit signing with gpg](https://github.com/drduh/YubiKey-Guide), see also [user documentation](https://help.github.com/articles/signing-commits/) on Github
* [tig](https://github.com/jonas/tig) a text mode terminal to inspect git history

#### `vim`

Optionally the `vim` folder contains config for the vim editor. First install [`vundle`](https://github.com/VundleVim/Vundle.vim), a vim plugin manager. Create the `.vim` folder in `$HOME` first.

```shell
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then copy the `.vimrc` file to the home folder. To install all vim plugins via shell

```
$ vim +PluginInstall +qall
```

to install all plugins defined in `.vimrc`.

## OSX

On OSX there are a few additional useful tools:

* [Karabiner](https://pqrs.org/osx/karabiner/) to (re-)map keys on a Macbook Pro
  - Map Escape key to Capslock
  - Swap Option and Command key on external keyboard
  - Map function keys F1-f12 on external keyboard
* [iterm2](https://www.iterm2.com/downloads.html)
  - Fix navigational issues with arrow keys in iTerm2 with the command line, see [instructions](https://apple.stackexchange.com/a/293988).
* [Docker for OSX](https://docs.docker.com/docker-for-mac/)


#### Homebrew

Install [Homebrew](https://brew.sh/) first

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then install the following packages commonly used for different dev environments

* fzf
* tree
* pstree
* zsh-syntax-highlighting (it's advised to clone the [repository](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) into the `.oh-my-zsh/plugins` folder)

```bash
$ brew install fzf
```
