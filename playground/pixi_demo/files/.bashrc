. /etc/skel/.bashrc

PS1='\e[0;34m\W$ \e[m'
alias cat='batcat --wrap never --theme GitHub'
alias tree='tree -C --filesfirst'

# Let the pixi installer detect the current shell (perhaps needed because this is a container?)
export SHELL

cd pixi_demo
clear
