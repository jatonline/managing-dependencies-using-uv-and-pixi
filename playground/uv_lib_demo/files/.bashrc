. /etc/skel/.bashrc

PS1='\e[0;34m\W$ \e[m'
alias cat='batcat --wrap never --theme GitHub'
alias tree='tree -C --filesfirst'

. "$HOME/.local/bin/env"

cd uv_lib_demo
clear
echo "Project was started with: uv init --package"
echo
