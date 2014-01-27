# System information
OS=$(uname -s)

# Shortcuts
if [ "$OS" = "Darwin" ]; then
  alias ls="ls -hGl" # h: human-readable size; l: long; G: color files and folders`
  alias brup="brew update && brew upgrade"
  alias brclean="brew cleanup --force -s"
elif [ "$OS" = "Linux" ]; then
  alias ls="ls -hl --color" # h: human-readable size; l: long; color: color files and folders`
  alias apt-get="sudo apt-get -y"
  alias aptup="sudo apt-get -y update && sudo apt-get -y upgrade"
  alias aptclean="apt-get autoremove && apt-get clean"
fi

alias la="ls -a" # a: hidden files
alias :q="exit" # Vim is in
alias :qa="echo 'Are you sure? (add ! to quit)'"
alias :qa!="tmux kill-session"
alias vi="vim"
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
shopt -s autocd # Change to a directory without "cd"
alias cp="cp -R"
alias mkdir="mkdir -p"
alias reset="source $HOME/.bashrc && clear"
alias lstree="tree" # It's a shortcut to save me from googling it every time.
alias dotfiles="cd ~/dotfiles"
alias haste="haste | pbcopy"
alias getkey="gpg --keyserver pgp.mit.edu --recv-key"
alias less="less -FRX" # tame less with colors
alias vac="source ENV/bin/activate"
alias ssh="ssh -AC" # A: agent key forwarding. C: compression.
alias shutdown="sudo shutdown -h now"
alias reboot="sudo reboot"
alias df="df -H"
alias myip="curl icanhazip.com"
alias js="node"
alias emptytrash="`which rm` -rf ~/.Trash/*"
alias rm="rm -rf"
alias recd="cd .. && cd -"
alias back="cd -"

# rm moves files to trash
function trash () {
  local path
  for path in "$@"; do
    # ignore any arguments
    if [[ "$path" = -* ]]; then :
    else
      local dst=${path##*/}
      # append the time if necessary
      while [ -e ~/.Trash/"$dst" ]; do
        dst="$dst "$(date +%H-%M-%S)
      done
      mv "$path" ~/.Trash/"$dst"
    fi
  done
}

# MacVim
if [ "$OS" = "Darwin" ]; then
    alias vim='vim -g'
    alias vimdiff='vimdiff -g'
fi

# Environment
export GIT_EDITOR='vim'
if [ "$OS" = "Darwin" ]; then
  export EDITOR='vim -g' # MacVim GUI
elif [ "$OS" = "Linux" ]; then
  export EDITOR='vim'
fi
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:/usr/local/go/bin:~/.cabal/bin:$HOME/.rvm/bin:$PATH
export GOPATH=~/Projects/code/go
GIT_PS1_SHOWDIRTYSTATE=1 # Indicate changed files
# ssh-agent on linux
if [ "$OS" = "Linux" ] && [ $TERM != "dumb" ]; then
  SSHAGENT=/usr/bin/ssh-agent
  SSHAGENTARGS="-s"
  if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
    eval `$SSHAGENT $SSHAGENTARGS`
    ssh-add
    trap "kill $SSH_AGENT_PID" 0
  fi
fi

# Mac/Linux PS1s that account for different hostname commands
if [ "$OS" = "Darwin" ]; then
  export PS1='\[\e[0;35m\]$(scutil --get ComputerName): $([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD")\[\e[0;36m\]\W\[\e[0;32m\]$(__git_ps1 " ± %s")\[\e[m\] \[\e[0;33m\]\$\[\e[m\] ' # The best prompt ever, with colors and wd's git branch
elif [ "$OS" = "Linux" ]; then
  export PS1='\[\e[0;35m\]\h: $([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD")\[\e[0;36m\]\W\[\e[0;32m\]$(__git_ps1 " ± %s")\[\e[m\] \[\e[0;33m\]\$\[\e[m\] ' # The best prompt ever, with colors and wd's git branch
fi
export HISTCONTROL=ignoredups:erasedups # Keeps history concise
export HISTFILESIZE=4096 # Gives history more room

# bash completion
if [ "$OS" = "Darwin" ] && [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
elif [ "$OS" = "Linux" ] && [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/completions/git
  . /usr/share/git/git-prompt.sh # for __git_ps1
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # RVM

. ~/.bashrc_p

# tmux on start
if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ] && [ $TERM != "dumb" ]; then
  # Base16 Shell
  BASE16_SCHEME="monokai"
  BASE16_SHELL="$HOME/.base16/base16-$BASE16_SCHEME.dark.sh"
  [[ -s $BASE16_SHELL  ]] && . $BASE16_SHELL

  # teamocil workspace bash completion
  complete -W "$(teamocil --list)" teamocil

  #tmux attach || tmux new; exit
  tmux -2 new; exit
fi
