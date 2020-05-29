#!/bin/sh
cd $HOME
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

pyenv install 3.7.3
pyenv global 3.7.3
pyenv rehash
