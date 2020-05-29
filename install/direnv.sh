#!/bin/sh

if [ `brew list | grep direnv`x = "direnv"x ];then
    echo 'direnv already install'
else
    brew install direnv
fi
