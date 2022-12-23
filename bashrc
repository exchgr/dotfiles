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
alias autocop="git d origin/master --name-only | xargs bundle exec rubocop -a"
alias back="cd -"
alias be="bundle exec"
alias bs="bin/spring"
alias cp="cp -R"
alias de="docker exec -it"
alias df="df -H"
alias diff="colordiff"
alias dig="dig +noall +answer"
alias docker="open -gja Docker && while ! docker system info > /dev/null 2>&1; do sleep 1; done && docker"
alias dotfiles="cd ~/dotfiles"
alias ecrlogin='$(aws ecr get-login --no-include-email)'
alias emptytrash="`which rm` -rf ~/.Trash/*"
alias getkey="gpg --keyserver pgp.mit.edu --recv-key"
alias gitignore="git status --ignored --porcelain | sed -ne '/^!! */s///p'"
alias haste="haste | pbcopy"
alias pr="hub pull-request -o"
alias js="node"
alias kc="kubectl"
alias ke="kubectl exec -it"
alias la="ls -a" # a: hidden files
alias less="$PAGER" # tame less with colors
alias linux="docker run -it --entrypoint bash debian:stable-slim"
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

function dockerclean () {
  echo "Killing containers:"
  docker ps -q | xargs docker kill

  echo "Containers:"
  docker container ls -aq | xargs docker rm

  echo "Volumes:"
  docker volume ls -q | xargs docker volume rm

  echo "Images:"
  docker image ls -q | xargs docker image rm -f
}


function du () {
  ncdu
}

function agignore () {
  gitignore > ~/.agignore
}

function psgrep () {
  ps ax | grep $1
}

function psid() {
  psgrep $1 | awk '{print $1}'
}

function pskill() {
  psid $1 | xargs kill
}

function redcat () {
  cat $@ | grep -Eo $'\e\\[31m[^\e]*\e\\[[03]?m'
}

function redless () {
  redcat $@ | less
}

function repeatUntilSuccessful() {
  $@; while [ $? -ne 0 ]; do $@; done
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
export VISUAL='nvim'
export GIT_EDITOR="$VISUAL"
export EDITOR="$VISUAL"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="/usr/local/opt/llvm/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.rbenv/bin:$HOME/bin:/usr/local/opt/python@2/bin:/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:/usr/local/go/bin:$HOME/.cabal/bin:$PYENV_ROOT/bin:/usr/local/opt/node@14/bin:$HOME/go/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
export GOPATH=~/Projects/code/go
export CLOUDSDK_PYTHON="/usr/local/bin/python2.7"
GIT_PS1_SHOWDIRTYSTATE=1 # Indicate changed files

# Mac/Linux PS1s that account for different hostname commands
if [ "$OS" = "Darwin" ]; then
  host=$(hostname -s)
elif [ "$OS" = "Linux" ]; then
  host=$(hostname)
fi

export PS1='\[\e[0;33m\]$(date "+%Y-%m-%d %r") \[\e[0;32m\]$host: $([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I") "$PWD")\[\e[0;36m\]\W\[\e[0;35m\]$(__git_ps1 " ± %s")\[\e[m\] \n\[\e[0;38;05;202m\]\$\[\e[m\] ' # The best prompt ever, with colors and wd's git branch

export HISTCONTROL=ignoredups:erasedups # Keeps history concise

# Gives history more room
export HISTFILESIZE=4096
export HISTSIZE=4096

# bash completion
if [ "$OS" = "Darwin" ] && [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]]; then
  . "/opt/homebrew/etc/profile.d/bash_completion.sh"
elif [ "$OS" = "Linux" ] && [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/completions/git
  . /usr/share/git/git-prompt.sh # for __git_ps1
fi

commandExists "rbenv" && eval "$(rbenv init - --no-rehash)"
commandExists "direnv" && eval "$(direnv hook bash)"
commandExists "pyenv" && eval "$(pyenv init -)"

# SSH keychain
export KEYCHAIN="keychain"
export KEYCHAIN_ARGS="--quiet --eval --agents ssh"
export KEYFILE="id_ed25519"

if [ "$OS" = "Darwin" ]; then
  export KEYCHAIN_ARGS="$KEYCHAIN_ARGS --inherit any"
fi

keys () {
  commandExists $KEYCHAIN && eval "$($KEYCHAIN $KEYCHAIN_ARGS $KEYFILE)"
}

. ~/.bashrc_p

base16 () {
  if [ $TERM != "dumb" ]; then
    # Base16 Shell
    BASE16_SCHEME="bright"
    BASE16_BACKGROUND=$(defaults read -g AppleInterfaceStyle 2>/dev/null | awk '{print tolower($0)}')

    if [ -z $BASE16_BACKGROUND ]; then
      BASE16_BACKGROUND="light"
    fi

    BASE16_SHELL="$HOME/.base16/base16-$BASE16_SCHEME.$BASE16_BACKGROUND.sh"
    [[ -s $BASE16_SHELL  ]] && . $BASE16_SHELL
  fi
}

base16

export CLOUDSDK_PYTHON=/usr/bin/python2.7
export CLOUDSDK_GSUTIL_PYTHON=/usr/bin/python2.7

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

alias gam="$HOME/bin/gam/gam"

export PATH="$HOME/.cargo/bin:$PATH"

awsp () {
    if [[ -f ~/.aws/credentials && -n "${1}" ]]; then
        local aws_access_key_id=$(awk '/^\[profile '"${1}"'\]/{f=1} f==1&&/aws_access_key_id/{print $3;exit}' ~/.aws/credentials);
        local aws_secret_access_key=$(awk '/^\[profile '"${1}"'\]/{f=1} f==1&&/aws_secret_access_key/{print $3;exit}' ~/.aws/credentials);
        local aws_default_region=$(awk '/^\[profile '"${1}"'\]/{f=1} f==1&&/region/{print $3;exit}' ~/.aws/config);
        local aws_region=$(awk '/^\[profile '"${1}"'\]/{f=1} f==1&&/region/{print $3;exit}' ~/.aws/config);
        if [[ -n "${aws_access_key_id}" && -n "${aws_secret_access_key}" ]]; then
            export AWS_ACCESS_KEY_ID=${aws_access_key_id};
            export AWS_SECRET_ACCESS_KEY=${aws_secret_access_key};
            export AWS_DEFAULT_REGION=${aws_default_region};
            export AWS_REGION=${aws_region};
            export AWS_ACCOUNT=$(aws iam get-user --query 'User.[Arn]' --output text | cut -d: -f5);
            export AWS_PROFILE=${1}
        else
            echo "Profile ${1} doesn't appear to be configured in ~/.aws/credentials" 1>&2;
        fi;
    else
        echo "File ~/.aws/credentials don't exist || no profile given" 1>&2;
    fi
}

oblique

complete -C /opt/homebrew/bin/terraform terraform
complete -C terraform tf
complete -C rsync scp

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/.fzf-tab-completion/bash/fzf-bash-completion.sh
bind -x '"\t": fzf_bash_completion'
