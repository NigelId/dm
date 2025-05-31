#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="$PATH:/mnt/c/Program Files/Google/Chrome/Application/"
PATH="$PATH:/mnt/c/Windows/System32:/mnt/c/Users/Admin/AppData/Local/SumatraPDF/"
PATH="$PATH:/mnt/c/Users/Admin/AppData/Local/Microsoft/WinGet/Links/"
PATH="$PATH:/home/dm/.cargo/bin/"
PATH="$PATH:/mnt/c/Users/Admin/AppData/Local/Programs/Zalo/"
PATH="$PATH:/mnt/c/Program Files/PowerShell/7/"
PATH=$(printf %s "$PATH" | awk -vRS=: '!a[$0]++' | paste -s -d:)


alias sch='search'
alias yt='youtube'
alias chrome='_chrome'

alias ls='eza -lG --icons'
alias grep='grep --color=auto'
alias vi='nvim'
alias s@='source /home/dm/.bashrc'
alias gta='cd /mnt/c/Users/Admin/'
alias lms="gurl 'lms.hcmut.edu.vn'"
alias fb="gurl facebook.com"
alias zalo='zalo.exe'
alias pwsh="pwsh.exe -noexit -command 'cd'"
alias gh='gurl github.com'     
alias yeet='yay -Rc'
alias man='batman'
#git aliases
alias clone='git clone'
alias push='git push'
alias pull='git pull'
alias stat='git status'
alias diff='git diff'
alias mit='git commit'
alias add='git add'

PS1='[\u@\h \W]\$ '


eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash --cmd cd)"

[[ -f "/home/dm/.modules" ]] && source "/home/dm/.modules"

test -z "$TMUX" && (tmux attach || tmux new-session) 
# ln -sf  /mnt/wslg/runtime-dir/wayland-* $XDG_RUNTIME_DIR/
