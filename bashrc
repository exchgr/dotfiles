# System information
OS=$(uname -s)

# Shortcuts
if [ "$OS" = "Darwin" ]; then
  alias brclean="brew cleanup --force -s"
  alias brup="brew update && brew upgrade"
  alias ls="ls -hGl" # h: human-readable size; l: long; G: color files and folders`
elif [ "$OS" = "Linux" ]; then
  alias apt-get="sudo apt-get -y"
  alias aptclean="apt-get autoremove && apt-get clean"
  alias aptup="sudo apt-get -y update && sudo apt-get -y upgrade"
  alias ls="ls -hl --color" # h: human-readable size; l: long; color: color files and folders`
  alias pacman="sudo pacman"
fi

alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias :q="exit" # Vim is in
alias :qa!="tmux kill-session"
alias :qa="echo 'Are you sure? (add ! to quit)'"
alias ag="ag -C3"
alias back="cd -"
alias be="bundle exec"
alias cp="cp -R"
alias df="df -H"
alias diff="colordiff"
alias dotfiles="cd ~/dotfiles"
alias emptytrash="`which rm` -rf ~/.Trash/*"
alias getkey="gpg --keyserver pgp.mit.edu --recv-key"
alias haste="haste | pbcopy"
alias js="node"
alias la="ls -a" # a: hidden files
alias less="less -FRX" # tame less with colors
alias lstree="tree" # It's a shortcut to save me from googling it every time.
alias mkdir="mkdir -p"
alias myip6="curl ipv6.icanhazip.com"
alias myip="curl ipv4.icanhazip.com"
alias oblique="fortune oblique"
alias pgp="gpg"
alias reboot="sudo reboot"
alias rebundle="rm Gemfile.dev.lock && cp Gemfile.lock Gemfile.dev.lock && bundle"
alias recd="cd .. && cd -"
alias reset="source $HOME/.bashrc && clear"
alias rm="rm -rf"
alias rmswp="find . -name \"*.swp\" -exec rm {} \;"
alias rr="rbenv rehash"
alias rtfm="man"
alias scp="rsync -Pae ssh"
alias shutdown="sudo shutdown -h now"
alias ss="spring stop"
alias ssh="ssh -AC" # A: agent key forwarding. C: compression.
alias sshfs="sshfs -o follow_symlinks"
alias vac="source ENV/bin/activate"
alias vi="vim"

shopt -s autocd # Change to a directory without "cd"

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

# Environment
export GIT_EDITOR='vim'
export EDITOR='vim'
export PATH="$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:/usr/local/go/bin:$HOME/.cabal/bin:$PATH"
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

eval "$(rbenv init - --no-rehash)"

. ~/.bashrc_p

# tmux on start
if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ] && [ $TERM != "dumb" ]; then
  # Base16 Shell
  BASE16_SCHEME="bright"
  BASE16_SHELL="$HOME/.base16/base16-$BASE16_SCHEME.light.sh"
  [[ -s $BASE16_SHELL  ]] && . $BASE16_SHELL

  # teamocil workspace bash completion
  complete -W "$(teamocil --list)" teamocil

  # tmux attach || tmux new; exit
  tmux -2 new; exit
fi
