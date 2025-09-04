. /etc/skel/.bashrc

PS1='\e[0;34m\W$ \e[m'
PROMPT_COMMAND='echo'

alias ls='ls --almost-all --classify --group-directories-first --human-readable'
alias cat='batcat --wrap never --theme GitHub'
alias tree='tree -AC --filesfirst -I __pycache__'

# Provide a command to simulate a shell restart
alias restart='. ~/.bashrc'

# Let the pixi installer detect the current shell (perhaps needed because this is a container?)
export SHELL='bash'

# --------------------------------------------------

# Add backup installer for pixi
install_backup_pixi() {
    export PATH="$HOME/backup/bin:$PATH"
}

cd ~/pixi_demo
clear
