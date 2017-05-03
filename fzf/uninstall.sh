#!/usr/bin/env bash
#
# Uninstall fzf

if [ -d $HOME/.fzf ]; then
    $HOME/.fzf/uninstall
    rm -rf $HOME/.fzf
fi

exit 0
