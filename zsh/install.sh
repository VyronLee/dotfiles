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
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh || {
        echo "git clone of oh-my-zsh repo failed!"
        exit 1
    }
    echo "oh-my-zsh installed!"

    #install theme
    curl -fsSL https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm-zsh/master/honukai.zsh-theme > $HOME/.oh-my-zsh/themes/honukai.zsh-theme
fi

echo "changing default shell to zsh"
chsh -s $(grep /zsh$ /etc/shells | tail -1)
