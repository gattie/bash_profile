#!/bin/bash

for i in profile bashrc gitconfig screenrc tmux.conf
do
  cp ${i} ~/.${i}
done

source ~/.profile
