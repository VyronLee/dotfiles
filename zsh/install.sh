#!/usr/bin/env bash
#
# Install or update oh-my-zsh

OMZSH_ROOT=$HOME/.oh-my-zsh

if [ -d $OMZSH_ROOT ]; then
    echo 'updating oh-my-zsh'
    pushd $OMZSH_ROOT
    git pull origin master || {
        echo "update oh-my-zsh failed!"
        exit 1
    }
    popd
else
    echo 'installing oh-my-zsh'
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $OMZSH_ROOT || {
        echo "git clone of oh-my-zsh repo failed!"
        exit 1
    }
    echo "oh-my-zsh installed!"

    echo 'installing zsh-autosuggestions'
    git clone https://github.com/zsh-users/zsh-autosuggestions $OMZSH_ROOT/plugins/zsh-autosuggestions || {
        echo "git clone of oh-my-zsh repo failed!"
        exit 1
    }
    echo "zsh-autosuggestions installed!"

    #install theme
    curl -fsSL https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm-zsh/master/honukai.zsh-theme > $HOME/.oh-my-zsh/themes/honukai.zsh-theme
fi

