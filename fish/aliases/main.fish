alias ll "eza -lah --icons --color=always"
alias btpw "cat /sys/class/power_supply/BAT0/capacity"
alias vim "nvim"
alias sdn "sudo shutdown now"
alias grep "rg"
alias bright "sudo nvim /sys/class/backlight/intel_backlight/brightness"
alias cat "bat"
alias snvim "sudo -E nvim"
alias hx "helix"

alias ls 'sl -e -a -d'
alias grep 'grep --color=auto'

thefuck --alias | source
