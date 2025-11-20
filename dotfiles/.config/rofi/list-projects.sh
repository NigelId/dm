#!/usr/bin/env bash

PROJECTS_DIR="$HOME/Projects"

choice=$(find "$PROJECTS_DIR" -mindepth 1 -maxdepth 1 -type d -printf "%f\n" \
    | sort | rofi -dmenu -p "run:" -l 6)

[ -z "$choice" ] && exit 0

SESSION_NAME="$choice"
PROJECT_PATH="$PROJECTS_DIR/$choice"

TERMINAL=foot

if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux switch-client -t "$SESSION_NAME"
else
    tmux new-session -ds "$SESSION_NAME" -c "$PROJECT_PATH"
    tmux switch-client -t "$SESSION_NAME"
fi



