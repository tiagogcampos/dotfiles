if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

fish_vi_key_bindings

zoxide init fish | source
pyenv init - | source
