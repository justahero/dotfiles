dotfiles
========

A collection of used dotfiles

## Setup

Usually the following packages / tools are useful

* [zsh](https://www.zsh.org/) as the default shell
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), a collection of useful tools / plugins for zsh
  * [zsh-completions](https://github.com/zsh-users/zsh-completions/#oh-my-zsh) plugin
  * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) plugin for colored output
* [rbenv](https://github.com/rbenv/rbenv), a Ruby manager
* [fzf](https://github.com/junegunn/fzf), a command line fuzzy search, scans command history

#### Git

A few tools / executables are useful when using Git

* [diff-highlight](https://github.com/git/git/tree/master/contrib/diff-highlight), displays a nicer diff
* [commit signing with gpg](https://github.com/drduh/YubiKey-Guide), see also [user documentation](https://help.github.com/articles/signing-commits/) on Github
* [overcommit](https://github.com/brigade/overcommit) manages git commit hooks with Ruby


#### Useful Tools

* [kubectx](https://github.com/ahmetb/kubectx) - Tools for Kubernetes


## OSX

On OSX there are some extra tools that can be useful

* [Karabiner](https://pqrs.org/osx/karabiner/) to map keys, e.g. Escape to Capslock on Macbooks that have a touch bar
* [iterm2](https://www.iterm2.com/downloads.html)
* [Docker for OSX](https://docs.docker.com/docker-for-mac/)

To fix some issues with arrow keys in iTerm2 read the following [instructions](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x).

#### Homebrew

Install [Homebrew](https://brew.sh/) first

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then install the following packages commonly used for different dev environments

* fzf
* node
* readline
* tree
* pstree
* reattach-to-user-namespace (to handle window session with tmux)
* tmux
* zsh-syntax-highlighting (it's advised to clone the [repository](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) into the `.oh-my-zsh/plugins` folder)

```bash
$ brew install fzf
```
