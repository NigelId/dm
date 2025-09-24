#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$(printf %s "$PATH" | awk -vRS=: '!a[$0]++' | paste -s -d:)


alias ls='eza -G --icons'
alias grep='grep --color=auto'
alias vi='nvim'
alias s@='source /home/nigel/.bashrc'
alias yeet='yay -Rc'
#git aliases
alias clone='git clone'
alias push='git push'
alias pull='git pull'
alias stat='git status'
alias diff='git diff'
alias mit='git commit'
alias add='git add'
alias gaa='git add -A'
alias empty='git commit --allow-empty-message -m "" '

PS1='[\u@\h \W]\$ '

export MANPAGER="nvim +Man!"

eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash --cmd cd)"

[[ -f "/home/nigel/.modules" ]] && source "/home/nigel/.modules"

test -z "$TMUX" && (tmux attach || tmux new-session) 
# ln -sf  /mnt/wslg/runtime-dir/wayland-* $XDG_RUNTIME_DIR/
export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH
