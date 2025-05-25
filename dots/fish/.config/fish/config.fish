if status is-interactive
    # Commands to run in interactive sessions can go here
    bind \b backward-kill-word
    cat ~/.cache/wal/sequences
    bind \e\[3\;5~ kill-word
    zoxide init --cmd c fish | source
    figlet welcome, GUGA
    abbr -a -- nv nvim
    atuin init fish | source
end
