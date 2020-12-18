# changing ulimit. Source: https://fantashit.com/building-on-macos-big-sur/
ulimit -S -n 4096

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Node version manager
# export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='rg --hidden --files'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Google Cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dev/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dev/google-cloud-sdk/completion.zsh.inc'; fi

# aws
# export PATH=~/.local/bin:$PATH

# eb
# export PATH=/home/dev/.ebcli-virtual-env/executables:$PATH

# go
export GOPATH="$HOME/go"
export PATH="$PATH:$(go env GOPATH)/bin"

# Yarn
export PATH=~/.yarn/bin:$PATH

# Editor
export EDITOR=/usr/local/bin/nvim

# Aliases
alias nst="npm start"
alias nrw="npm run watch"
alias vim="nvim"
alias rst="realize start"
#alias go1.15="go"
#alias go="go1.16beta1"
# unalias mysql

# Functions
function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}
function note {
  vim ~/Desktop/meeting_notes/meeting_notes.md
}
function rtu {
  cd /Users/dev/go/src/gitlab.com/ruangguru/source && tmux
}
function rgu {
  cd /Users/dev/go/src/gitlab.com/ruangguru/source
}

export YVM_DIR=/Users/dev/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# opam configuration
test -r /Users/dev/.opam/opam-init/init.zsh && . /Users/dev/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
