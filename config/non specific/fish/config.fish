function fish_greeting
    echo The time is (set_color purple; date +%T; set_color purple)
end
alias ls="exa -l -a --group-directories-first --icons"
alias gc="git clone"

function timeis
    echo The time is (set_color purple; date +%T; set_color purple)
end

export PATH="~/.local/bin:$PATH"
alias vim="nvim"
alias transcat="queercat -b -f 1 -v 0.45 -h 0.45"
alias clock="tty-clock -s -C 5 -D -c -b"
starship init fish | source