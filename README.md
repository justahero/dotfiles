dotfiles
========

A collection of used dotfiles

## Setup

Usually the following packages / tools are useful

* [zsh](https://www.zsh.org/) as the default shell
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), a collection of useful tools / plugins for zsh
* [rbenv](https://github.com/rbenv/rbenv), a Ruby manager
* [fzf](https://github.com/junegunn/fzf), a command line fuzzy search, scans command history


## OSX

On OSX there are some extra tools that can be useful

* [Karabiner](https://pqrs.org/osx/karabiner/) to map keys, e.g. Escape to Capslock on Macbooks that have a touch bar

#### Homebrew

Install [Homebrew](https://brew.sh/) first

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then install the following packages commonly used for different dev environments

* fzf
* readline
* tree
* pstree
* reattach-to-user-namespace (to handle window session with tmux)
* tmux
* zsh-syntax-highlighting (it's advised to clone the [repository](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) into the `.oh-my-zsh/plugins` folder.

```bash
$ brew install fzf
```
