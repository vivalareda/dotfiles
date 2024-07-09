## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```


2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles
```


3. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```


4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```

## Linux (WSL)

1. Navigate to ~

2. Create symlink for .gitconfig and .zshrc files
`ln -s /path/to/dotfiles-repo/.zshrc ~/.zshrc`
`ln -s /path/to/dotfiles-repo/.gitconfig ~/.gitconfig`

3. Verify symlink
`ls -l ~/.file`

4. Source zshrc
`source ~/.zshrc`

5. Authenticate with github CLI
`ls -l ~/.zshrc`

Alternatively, we can run the script `setup-dotfiles.sh`

```
chmod +x setup_dotfiles.sh
./setup_dotfiles.sh /path/to/dotfiles-repo
```
