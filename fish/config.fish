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
# For this to work we need starship installed
set fish_greeting
starship init fish | source

xset r rate 200 30
xinput --set-prop 'pointer:''SynPS/2 Synaptics TouchPad' 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 'pointer:''SynPS/2 Synaptics TouchPad' 'libinput Accel Speed' +0.5


