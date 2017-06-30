#!/bin/bash

alias l="ls -l --color=auto"
alias la="ls -la --color=auto"
alias lrt="ls -lrt --color=auto"
alias lart="ls -lart --color=auto"
alias v="vim"
#alias cd="echo bash: cd: command not found..."

#ssh()
#{
#    if [ $1 == "root@fretboard" ] || [ $1 == "root@135.121.114.129" ] ; then
#            command ssh root@135.121.114.225 $2
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


addToPath()
{
  PARAM1="$1"
  RVAL=""

    RVAL=`echo $PATH | \
         awk -v var="$PARAM1" 'BEGIN { FS=":" } ; \
           { for (i=1;i<=NF;i++) { if ($i == var) { print 1 } } }'`

  if [ -z "$RVAL" ]; then
    export PATH="$PARAM1:${PATH}"
  fi
}

#
#  MAINLINE
#

export IDEA_PROPERTIES="/users/$USER/.idea.properties"

#export GRADLE_HOME=/usr/local/gradle-2.13
#export GRADLE_OPTS="-Dgradle.user.home=$GRADLE_HOME/.gradle"
export PATH="$PATH:$GRADLE_HOME/bin"

export IBUS_ENABLE_SYNC_MODE=1

#addToPath "/opt/<IDEA-DIR>/bin"
#addToPath "$GRADLE_HOME/bin" 
addToPath "/sac/tools/git/current/bin"
addToPath "/sac/tools/apache-ant-1.7.1/bin"
