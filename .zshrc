# Load Oh My Zsh
export PATH="$PATH:/mnt/c/Users/reda/AppData/Local/Programs/Microsoft VS Code/bin"
eval "$(oh-my-posh init zsh --config ~/github/oh-my-posh/themes/capr4n.omp.json)"

# End of lines added by compinstall

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Custom function to run git pull and open VS Code
codepull() {
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
