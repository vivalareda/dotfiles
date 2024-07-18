# Load Oh My Zsh
export PATH="$PATH:/mnt/c/Users/reda/AppData/Local/Programs/Microsoft VS Code/bin"
eval "$(oh-my-posh init zsh --config ~/github/oh-my-posh/themes/capr4n.omp.json)"

# End of lines added by compinstall

export NVM_DIR="$HOME/.nvm"
export VIMRC_ENV=wsl
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Plugins and configuration
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan'

# Custom aliases
alias g='git'
alias gc='git commit -m'
alias ga='git add'
alias gac='git add . && git commit -m'
alias gp='git push'
alias p='python3'
# Custom function to run git pull and open VS Code
cp() {
  # If no argument is given, use the current directory
  if [ -z "$1" ]; then
    dir="."
  else
    dir="$1"
  fi

  # Navigate to the specified directory
  cd "$dir" || { echo "Directory not found"; return 1; }

  # Run git pull and open VS Code
  git pull
  code .
}

co() {
  if [ -d "$1" ]; then
    cd "$1" || return
    code .
  else
    echo "Directory $1 does not exist."
  fi
}

# Ensure that zsh-syntax-highlighting is loaded last
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# pnpm
export PNPM_HOME="/home/reda/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Set up fzf key bindings and fuzzy completion
