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

export PAGER="less -FRX"

alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias :q="exit" # Vim is in
alias :qa!="tmux kill-session"
alias :qa="echo 'Are you sure? (add ! to quit)'"
alias ag="ag -C3 --pager \"$PAGER\""
alias apmi="apm install --packages-file $HOME/.atom/packages.txt"
alias back="cd -"
alias be="bundle exec"
alias cp="cp -R"
alias de="docker exec -it"
alias df="df -H"
alias diff="colordiff"
alias dockerclean="docker volume ls | awk '{if(NR>1)print \$2}' | xargs docker volume rm"
alias dotfiles="cd ~/dotfiles"
alias emptytrash="`which rm` -rf ~/.Trash/*"
alias getkey="gpg --keyserver pgp.mit.edu --recv-key"
alias gitignore="git status --ignored --porcelain | sed -ne '/^!! */s///p'"
alias haste="haste | pbcopy"
alias js="node"
alias la="ls -a" # a: hidden files
alias less="$PAGER" # tame less with colors
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
alias rmswp="find . -name \"*.swp\" -exec rm {} \; && rm ~/.local/share/nvim/swap/*.swp"
alias rr="rbenv rehash"
alias rs="rbenv sudo"
alias rtfm="man"
alias scp="rsync -Phae ssh"
alias shutdown="sudo shutdown -h now"
alias sk9="sudo kill -9"
alias ss="spring stop"
alias ssh="ssh -AC" # A: agent key forwarding. C: compression.
alias sshfs="sshfs -o follow_symlinks"
alias tf="terraform"
alias vac="source ENV/bin/activate"
alias vi="nvim"
alias vim="nvim"

shopt -s autocd # Change to a directory without "cd"
shopt -s globstar # Enable recursive globstar

function du () {
  sudo du -hxd 1 $@ | sort -h
}

function agignore () {
  gitignore > ~/.agignore
}

function redcat () {
  cat $@ | grep -Eo $'\e\\[31m[^\e]*\e\\[[03]?m'
}

function redless () {
  redcat $@ | less
}

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

# check whether a command exists
commandExists () {
  command -v $@ >/dev/null 2>&1 || { echo >&2 "I require $@ but it's not installed."; return 1; }
}

# Environment
export GIT_EDITOR='nvim'
export EDITOR='nvim'
export PATH="/usr/local/opt/llvm/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.rbenv/bin:$HOME/bin:/usr/local/opt/python@2/bin:/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:/usr/local/go/bin:$HOME/.cabal/bin:$PATH"
export GOPATH=~/Projects/code/go
export CLOUDSDK_PYTHON="/usr/local/bin/python2.7"
GIT_PS1_SHOWDIRTYSTATE=1 # Indicate changed files

# Mac/Linux PS1s that account for different hostname commands
if [ "$OS" = "Darwin" ]; then
  host=$(hostname -s)
elif [ "$OS" = "Linux" ]; then
  host=$(hostname)
fi

export PS1='\[\e[0;35m\]$host: $([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD")\[\e[0;36m\]\W\[\e[0;32m\]$(__git_ps1 " ± %s")\[\e[m\] \n\[\e[0;33m\]\$\[\e[m\] ' # The best prompt ever, with colors and wd's git branch

export HISTCONTROL=ignoredups:erasedups # Keeps history concise

# Gives history more room
export HISTFILESIZE=4096
export HISTSIZE=4096

# bash completion
if [ "$OS" = "Darwin" ] && [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
elif [ "$OS" = "Linux" ] && [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/completions/git
  . /usr/share/git/git-prompt.sh # for __git_ps1
fi

commandExists "rbenv" && eval "$(rbenv init - --no-rehash)"
commandExists "direnv" && eval "$(direnv hook bash)"

# SSH keychain
export KEYCHAIN="keychain"
export KEYCHAIN_ARGS="--quiet --eval --agents ssh"
export KEYFILE="id_rsa"

if [ "$OS" = "Darwin" ]; then
  export KEYCHAIN_ARGS="$KEYCHAIN_ARGS --inherit any"
fi

commandExists $KEYCHAIN && eval "$($KEYCHAIN $KEYCHAIN_ARGS $KEYFILE)"

. ~/.bashrc_p

if [ $TERM != "dumb" ]; then
  # Base16 Shell
  BASE16_SCHEME="bright"
  BASE16_SHELL="$HOME/.base16/base16-$BASE16_SCHEME.light.sh"
  [[ -s $BASE16_SHELL  ]] && . $BASE16_SHELL
  alias base16=$BASE16_SHELL
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/emundy/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/emundy/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/emundy/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/emundy/Downloads/google-cloud-sdk/completion.bash.inc'; fi

alias gam="/Users/emundy/bin/gam/gam"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/emundy/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/emundy/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/emundy/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/emundy/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
