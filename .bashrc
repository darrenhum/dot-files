#!/bin/bash

alias l="ls -l --color=auto"
alias la="ls -la --color=auto"
alias lrt="ls -lrt --color=auto"
alias lart="ls -lart --color=auto"
alias v="vim"
#alias cd="echo bash: cd: command not found..."

#ssh()
#{
#    if [ $1 == "root@fretboard" ] || [ $1 == "root@xxx.xxx.xxx.xxx" ] ; then
#            command ssh root@xxx.xxx.xxx.xxx $2
#       else
#               command ssh "$@"
#        fi
#}
#}

PS1="\[\033[1;34m\][\u:\w]$\[\033[0m\]"

# Don't put duplicate line sin history.
export HISTCONTROL=ignoreboth:erasedups

#COMPACT_INSTALL="y"

# Proxy for command line


#
# FUNCTIONS
#

redeployas() 
{
  tmp=$1
  tmp2=$2
  echo $tmp
  echo $tmp2
}

cd () { builtin cd "$@" && chpwd; }
pushd () { builtin pushd "$@" && chpwd; }
popd () { builtin popd "$@" && chpwd; }
chpwd () {
  case $PWD in
    $HOME) HPWD="~";;
    $HOME/*/*) HPWD="${PWD#"${PWD%/*/*}/"}";;
    $HOME/*) HPWD="~/${PWD##*/}";;
    /*/*/*) HPWD="^/""${PWD#"${PWD%/*/*/*}/"}";;
    *) HPWD="$PWD";;
  esac

    PS1="\[\033[1;34m\][\u:$HPWD]$\[\033[0m\]"
}
