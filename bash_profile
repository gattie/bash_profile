# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/opt/bin

export PATH

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

function files {
  /bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g'
}

function size {
  /bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //'
}

GRAY="\[\e[30;1m\]"
RED="\[\e[31;1m\]"
BLUE="\[\e[34;1m\]"
GREEN="\[\e[32;1m\]"
NO_COLOUR="\[\e[0m\]"

PS1="\n$GRAY\[\016\]\[\017\]($BLUE\t \d$GRAY)-(\[$GREEN\w$GRAY)-($GREEN\$(files) files, \$(size)$GRAY)\n\
$GRAY\[\016\]\[\017\]($BLUE\u@\h$GRAY)$RED\$(parse_git_branch)$GRAY\$ $NO_COLOUR"
