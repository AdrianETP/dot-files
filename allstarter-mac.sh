# check if homebrew is installed and install it if not
if which brew; then
    echo "homebrew is installed"
else
    echo "homebrew is not installed, installing homebrew"
    sudo apt install curl
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    rm ~/.zshrc
    cp ~/.config/zshrcmac ~/.zshrc
fi

# installations with homebrew 
brew install nvim tmux fzf zoxide 

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm -y

