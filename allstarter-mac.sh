# check if homebrew is installed and install it if not
if which brew; then
    echo "homebrew is installed"
else
    echo "homebrew is not installed, installing homebrew"
    sudo apt install curl
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# installations with homebrew 
brew install nvim tmux fzf zoxide brave-browser raycast firefox

rm -rf ~/.config/tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm.git ~/.config/tmux/plugins/tpm


