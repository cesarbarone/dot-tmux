#!/bin/bash
CURRENT_SESSION='session'

# Start up the tmux session with specific name
tmux new-session -d -s $CURRENT_SESSION

# ngrok
tmux send-keys 'bash' 'C-m'
tmux send-keys 'teleforce' 'C-m'
tmux send-keys 'rake ngrok:start' 'C-m'
tmux rename-window ngrok

# foreman
tmux new-window
tmux send-keys 'bash' 'C-m'
tmux send-keys 'teleforce' 'C-m'
tmux send-keys 'foreman start' 'C-m'
tmux rename-window foreman

# grunt serve
tmux new-window
tmux send-keys 'bash' 'C-m'
tmux send-keys 'tclient' 'C-m'
tmux send-keys 'grunt serve' 'C-m'
tmux rename-window grunt serve

# VIM client window
tmux new-window
tmux send-keys 'bash' 'C-m'
tmux send-keys 'tclient' 'C-m'
tmux send-keys 'vim' 'C-m'
tmux rename-window vim

# useful terminal
tmux new-window
tmux send-keys 'bash' 'C-m'
tmux send-keys 'tclient' 'C-m'
tmux rename-window util

# RSpec window for running tests
#tmux new-window
#tmux rename-window rspec
#
## Window for running development server
#tmux new-window
#tmux rename-window server
#tmux send-keys 'mailcatcher' 'C-m'
#tmux send-keys 'rake server' 'C-m'
#
## Select the first window
#tmux select-window -t 1
#
## Attach the tmux session
tmux -2 attach -t $CURRENT_SESSION
