#!/bin/sh

if [ `brew list | grep rbenv`x = "rbenv"x ];then
    echo 'rbenv already install'
else
    echo ' === rbenvをインストールします ==='
    brew install rbenv
    brew install ruby-build

    rbenv rehash
    rbenv global 2.7.1
fi
