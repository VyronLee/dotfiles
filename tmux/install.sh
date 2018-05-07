#!/bin/bash
#
#Install tmux dependences.

TMUX_ROOT=$HOME/.tmux
TMUX_PLUGINS_ROOT=$TMUX_ROOT/plugins

mkdir -p $TMUX_PLUGINS_ROOT

if [[ -d $TMUX_PLUGINS_ROOT/tpm ]]; then
    echo 'updating tmux plugins manager'
    pushd $TMUX_PLUGINS_ROOT/tpm
    git pull origin master || {
        echo "update tmux plugins manager failed!"
        exit 1
    }
    popd
else
    echo 'installing fzf'
    git clone --depth 1 https://github.com/tmux-plugins/tpm.git $TMUX_PLUGINS_ROOT/tpm || {
        echo "git clone of tmux plugins manager repo failed!"
        exit 1
    }
    echo "tmux plugins manager installed!"
fi
