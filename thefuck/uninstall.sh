#!/bin/bash
#
#Uninstall thefuck extensions

if [ "$(pip3 list | grep thefuck)"x == ""x ]; then
   echo "thefuck not installed."
else
    sudo pip3 uninstall -y thefuck
fi
