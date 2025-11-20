if status is-login
    if test -z "$DISPLAY" -a "$(tty)" = /dev/tty1
        exec startx -- -keeptty
    end
end

alias ss='sudo dnf install -y'
alias rr='sudo dnf remove -y'
alias l='ls -a'
alias upd='sudo dnf update -y && sudo dnf upgrade -y && flatpak update -y'
alias ff='fastfetch'
