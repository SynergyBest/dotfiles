DOTFILESDIR="$HOME/.dotfiles"
CUSTOMRCDIR="$DOTFILESDIR/.customrc"
#=============[ Zsh Options ]=============
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$HOME/.zsh_history"

#=============[ OhMyZsh ]=============
if [[ -d $HOME/.oh-my-zsh ]]; then
    export ZSH="/Users/theo/.oh-my-zsh"
    ZSH_THEME="powerlevel10k/powerlevel10k"
    plugins=(
        zsh-syntax-highlighting
        zsh-autosuggestions
    )
    source $ZSH/oh-my-zsh.sh
fi
#=============[ End OhMyZsh ]=============

#=============[ Sourcing files ]=============
if [[ -d $CUSTOMRCDIR ]]; then
    if [[ -f $CUSTOMRCDIR/.aliasesrc ]]; then
        . $CUSTOMRCDIR/.aliasesrc
    fi
    if [[ -f $CUSTOMRCDIR/.languagesrc ]]; then
        . $CUSTOMRCDIR/.languagesrc
    fi
        if [[ -f $CUSTOMRCDIR/.exportsrc ]]; then
        . $CUSTOMRCDIR/.exportsrc
    fi
fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#=============[ End Sourcing files ]=============

#=============[ PowerLevel10k ]=============
[[ ! -f ~/.dotfiles/.config/zsh/.p10k.zsh ]] || source ~/.dotfiles/.config/zsh/.p10k.zsh
#=============[ End PowerLevel10k ]=============
