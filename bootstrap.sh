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

# git
ln -sf `pwd`/.git_commit_msg.txt ~/.git_commit_msg.txt
ln -sf `pwd`/.gitignore_global ~/.gitignore_global

# zsh
ln -sf `pwd`/.zsh/.zprofile ~/

# bin folder
ln -sf `pwd`/bin/diff-highlight ~/bin/
ln -sf `pwd`/bin/git-churn ~/bin/
ln -sf `pwd`/bin/git-overwritten ~/bin/
