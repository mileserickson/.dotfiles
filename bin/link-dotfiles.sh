#!/bin/bash

for name in $HOME/.dotfiles/.*; do
  if [[ $name == *.example ]]; then
    : # echo "Skip $name"
  else
    if [ -d "$name" ]; then
      : # echo "Skip $name"
    else
      target=$HOME/`basename $name`
      if [ -e "$target" ]; then
        if [ -L "$target" ]; then
          echo "Exist $name"
        else
          echo "WARNING: $target exists but is not a symlink."
          echo "         Please remove $target and run this $0 again to install $name"
        fi
      else
        echo "Link $name"
        ln -s "$HOME/.dotfiles/$name" "$target"
      fi
    fi
  fi
done
