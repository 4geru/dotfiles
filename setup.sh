#!/bin/sh

ln -sf ~/dotfiles/bash/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

# tmux copy command
if [[ v1=`brew list  | grep reattach-to-user-namespace` -ne 'reattach-to-user-namespace' ]]; then
  brew install reattach-to-user-namespace
fi