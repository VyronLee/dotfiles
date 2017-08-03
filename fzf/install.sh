#!/bin/bash
#
#Install shell extensions

FZF_ROOT=$HOME/.fzf

if [ -d $FZF_ROOT ]; then
    echo 'updating fzf'
    pushd $FZF_ROOT
    git pull origin master || {
        echo "update fzf failed!"
        exit 1
    }
    popd
else
    echo 'installing fzf'
    git clone --depth 1 https://github.com/junegunn/fzf.git $FZF_ROOT || {
        echo "git clone of fzf repo failed!"
        exit 1
    }
    $FZF_ROOT/install --bin
    echo "fzf installed!"
fi
