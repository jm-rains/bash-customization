######################################################################
##                          Custom Aliases                          ##
######################################################################

###     Justin M. Rains             ###
###     jmrains@protonmail.com      ###   
###     As of 09 April 2022         ###
###     LMDE 5                      ###

#------------------------------------------
# Symlink this file to ~/.bash_aliases.
# Ensure this file is called by ~/.bashrc:
#     if [ -f ~/.bash_aliases ]; then
#          . ~/.bash_aliases
#     fi
#------------------------------------------


#### Custom List Aliases #############################################

alias ls='ls --color=auto'
alias ll='ls -ACg --color=auto'
alias lj='ls -ACF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'


#### Changing Directories ############################################

alias cd2='cd .. && cd ..'
alias cd3='cd .. && cd .. && cd ..'
alias cd4='cd .. && cd .. && cd .. && cd ..'
alias pd='pushd'
alias po='popd'


#### Streamline apt commands #########################################

alias apt='sudo apt'


#### Shutdown and Reboot Easily ######################################

alias sd!='sudo shutdown now --no-wall'
alias rb!='sudo reboot now --no-wall'


#### Get the Weather & the Moon Phase ################################

# Note: Substitute desired zip code for XXXXX 

alias wx='clear && curl wttr.in/XXXXX'
alias wm='clear && curl wttr.in/moon'


#### Launch Bash PyTop ###############################################

alias bp='bpytop'


#### Do a Temperature Conversion #####################################

# See: https://github.com/jm-rains/tempconv

alias t!='python ~/.local/bin/tempconv.py'


#### Get system's public IP (IPv4) ###################################

alias icanhazip='curl icanhazip.com -4'


#### Open files from the terminal ####################################

## Open files with designated GUI application

alias x='xdg-open '

## Open files in emacs within terminal

alias e='emacs -q -nw --no-splash -bg MidnightBlue -fg cornsilk'


#### Use proper (Perl) rename ########################################

alias rename='prename'


####     Python     ##################################################

## Python3 is Python

alias python='python3'
alias p='python3'


#### Deprecated ######################################################

# Note: I've implemented a script to fire the clock...
# alias clock="tty-clock -Bbc -C 6 -f '%A, %d %B %Y'"


####     END OF FILE    ##############################################
