PS1="\[\]\$(exit=\$?; if [[ \$exit == 0 ]]; then echo \"\[\033[01;32m\]✓\"; else echo \"\[\033[01;31m\]✗ \$exit\"; fi) \[\033[01;32m\]\u\[\033[01;34m\] \W \$\[\033[00m\] "

export PATH="$PATH:/home/cslee/dev/chrome/depot_tools"

alias gitLogCommits='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'

# not tracked by git
source ~/.bash_xtra

export LANG="en_US.UTF-8"



if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# prompt
#PS1='[\u@\h \W]\$ '
export OSSIEHOME=/var/lib/redhawk/core
export SDRROOT=/var/lib/redhawk/sdr
export PYTHONPATH=${OSSIEHOME}/lib/python
export JAVA_HOME=/usr/lib/jvm/java
export PATH="${OSSIEHOME}/bin:${JAVA_HOME}/bin:$PATH"
export AMDAPPSDKROOT="/home/slee/AMDAPPSDK-3.0-0-Beta"
export LD_LIBRARY_PATH="/var/lib/redhawk/core/lib64:/var/lib/redhawk/core/lib:/usr/local/redhawk/core/lib64:home/slee/amd-ocl/AMDAPPSDK-3.0-0-Beta/lib/x86_64/:/home/slee/amd-ocl/AMDAPPSDK-3.0-0-Beta/lib/x86/:/home/slee/AMDAPPSDK-3.0-0-Beta/lib/x86_64/:/home/slee/AMDAPPSDK-3.0-0-Beta/lib/x86/"
