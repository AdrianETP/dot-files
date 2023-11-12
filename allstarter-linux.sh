# check if homebrew is installed and install it if not
if which brew; then
    echo "homebrew is installed"
else
    echo "homebrew is not installed, installing homebrew"
    sudo apt install curl
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    rm ~/.bashrc
    cp ~/.config/bashrclinux ~/.bashrc
fi

# install starship
curl -sS https://starship.rs/install.sh | shcurl -sS https://starship.rs/install.sh | sh

# installing apps with apt

# brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# arandr 
sudo apt install arandr -y

# copyq 
sudo apt install copyq -y 

# alacritty
sudo apt install alacritty -y

# picom
sudo apt install picom -y

# i3 blocks
sudo apt install i3blocks

# installations with homebrew 
brew install nvim tmux fzf zoxide 

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm -y

if [ -e ~/Pictures/Bigsur.jpg ]; then
    echo "Big sur file is already on pictures"
else
    echo "Moving Big sur file to Pictures"
    cp ~/.config/Bigsur.jpg ~/Pictures/Bigsur.jpg
fi
i3-msg reload

source ~/.bashrc
