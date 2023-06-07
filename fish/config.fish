# Lazar K0v4c configs

# Editor
set -x EDITOR nvim
set -x GIT_EDITOR $EDITOR
set -x XDG_HOME_CONFIG /home/lazar/.config

#Call aliases
if [ -f $HOME/.config/fish/aliases/main.fish ]
    source $HOME/.config/fish/aliases/main.fish
end

# Git
if [ -f $HOME/.config/fish/aliases/git.fish ]
    source $HOME/.config/fish/aliases/git.fish
end

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx
  end
end

# Remove fish greeting 
set fish_greeting

xset r rate 200 30



