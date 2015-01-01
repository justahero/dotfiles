#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
# git pull origin master
function doIt() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "LICENSE-MIT.txt" -av --no-perms . ~
  source ~/.zshrc
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi
unset doIt

# vim
ln -sf `pwd`/vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# macvim
ln -sf `pwd`/vim/gvimrc ~/.gvimrc

# tmux
ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf
