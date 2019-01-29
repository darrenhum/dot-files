source ~/.bashrc
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#export PS1="\[\e[38;5;46m\]\W » \[\e[0m\]"
#export PS1=" \[\e[38;5;46m\]──:\W » \[\e[0m\]"

alias ll='ls -lG '
alias v='vim'

function macfeh() {
	open -b "drabweb.macfeh" "$@"
}

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
cowsay $(fortune -a) | lolcat
