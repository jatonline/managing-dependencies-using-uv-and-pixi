. /etc/skel/.bashrc

PS1='\e[0;34m\W$ \e[m'
alias cat='batcat --wrap never --theme GitHub'
alias tree='tree -C --filesfirst'

export PATH=$PATH:$HOME/.pixi/bin
eval "$(pixi completion --shell bash)"

cd pixi_lib_demo
clear
echo "Project was started with: pixi init --format pyproject"
echo "                and then: pixi install --all"
echo
