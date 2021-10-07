if status is-interactive
    # Commands to run in interactive sessions can go here
    source ~/.iterm2_shell_integration.fish
    tmux attach -t base || tmux new -s base
end
