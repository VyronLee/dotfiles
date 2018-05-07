#!/usr/bin/env bash
#
# Uninstall tmux dependences

if [ -d $HOME/.tmux ]; then
    echo "Remove $HOME/.tmux"
    rm -rf $HOME/.tmux
fi

exit 0
