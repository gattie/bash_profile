# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias tmux='tmux -2'
if [ "$(uname)" == "Darwin" ]
then
  alias ll='ls -lGa'
fi
#export LANG=en_US.UTF-8

tableflip() { echo "（╯°□°）╯ ┻━┻"; }
tablefix() { echo "┬─┬ ノ( ゜-゜ノ)"; }
