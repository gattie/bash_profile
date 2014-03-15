#!/bin/bash

for i in bash_profile bashrc gitconfig screenrc tmux.conf
do
  cp ${i} ~/.${i}
done

source ~/.bash_profile
