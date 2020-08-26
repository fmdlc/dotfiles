# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.zsh"
source "/usr/local/opt/fzf/shell/key-bindings.zsh"
bindkey "^f" fzf-file-widget

# fd - Allow cd into the selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" --exclude "*.terraform" --exclude "*.sw*" --exclude "Applications" --exclude "Pictures" --exclude "Movies" --exclude "Library" --exclude "Desktop" --exclude "Music" --exclude "Public" $1
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

fd() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}

zstyle ':completion:*:*:aws' fzf-search-display true
