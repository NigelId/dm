#
# ~/.bashrc
#
# If not running interactively, don't do anything

if [ -n "$TMUX" ]; then
    if [ "$(tmux show-option -qv @fastfetch_ran)" != "1" ]; then
        fastfetch
        tmux set-option -q @fastfetch_ran 1
    fi
fi
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
alias yz='yazi'
PS1='[\u@\h \W]\$ '

export MANPAGER="nvim +Man!"

eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash --cmd cd)"

[[ -f "/home/nigel/.modules" ]] && source "/home/nigel/.modules"

eval "$(ssh-agent -s)" > /dev/null

test -z "$TMUX" && (tmux attach || tmux new-session) 

export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH
complete -cf sudo
