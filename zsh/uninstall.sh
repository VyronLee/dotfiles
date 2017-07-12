#!/usr/bin/env bash
#
# Uninstall oh-my-zsh

if [ -d $HOME/.oh-my-zsh ]; then
    rm -rf $HOME/.oh-my-zsh
fi

exit 0
