export ZSH=/root/.oh-my-zsh

ZSH_THEME="miloshadzic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

function cs() {
   cd $1
   ls
}

alias p="pwd"
alias c="clear"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias bodu="du -chd 1"
alias pullover="git stash && git pull && git stash pop"
alias m="make"
alias mr="make re"
alias mf="make fclean"
alias gds="git diff --staged"