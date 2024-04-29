#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#232634,bg=#C6D0F5"

set -g message-style "fg=default,bg=default"
set -g message-command-style "fg=default,bg=default"

set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#82aaff"

set -g status "on"
set -g status-justify "right"

set -g status-style "fg=default,bg=default"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-right " #{?client_prefix,#[reverse]<Prefix>#[noreverse],} #[fg=white,bg=default,bold] #S #[fg=white,bg=default,nobold,nounderscore,noitalics]"
set -g status-left ""
