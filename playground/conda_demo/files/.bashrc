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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ubuntu/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ubuntu/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/ubuntu/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ubuntu/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Simulate a git pull by changing directory
git() {
    if [[ "$1" == "pull" ]]
    then
        cd ~/updated_on_mac/conda_demo
        echo 'remote: Enumerating objects: 152, done.'
        echo 'remote: Counting objects: 100% (77/77), done.'
        echo 'remote: Compressing objects: 100% (45/45), done.'
        echo 'remote: Total 152 (delta 40), reused 49 (delta 26), pack-reused 75 (from 1)'
        sleep 1
        echo 'Receiving objects: 100% (152/152), 57.40 KiB | 14.35 MiB/s, done.'
        echo 'Resolving deltas: 100% (82/82), completed with 9 local objects.'
        echo 'From github.com:org/repo'
        sleep 1
        echo '0e31167..74ed4ba  main                  -> origin/main'
        echo 'Updating 0e31167..74ed4ba'
        echo 'Fast-forward'
        echo 'environment.yml                                  |   9 +++---'
        echo '1 files changed, 5 insertions(+), 4 deletions(-)'
    else
        echo "Only git pull is implemented"
        return 1
    fi
}

cd ~/conda_demo
clear
