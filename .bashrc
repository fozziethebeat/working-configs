source ~/.git-prompt.sh

set -o vi

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/opt/local/bin/"

export EDITOR=vim

function repo_name() {
  pwd | grep 'repos/' | sed -e 's/.*repos\/\(.*\)/ [\1]/' -e 's/\/.*]/]/'
}
function repo_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\e[37m\$(repo_name)\e[0m\]\e[31m\$(repo_branch)\e[0m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

