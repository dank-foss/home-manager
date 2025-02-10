if status is-interactive
    # Commands to run in interactive sessions can go here
    bind \b backward-kill-word
    cat ~/.cache/wal/sequences
    bind \e\[3\;5~ kill-word
    zoxide init --cmd cd fish | source
    figlet welcome, GUGA
    atuin init fish | source
    abbr -a gu gitui
end
