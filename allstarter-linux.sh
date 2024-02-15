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
sudo cp ~/.config/bin/* /usr/local/bin/
source ~/.bashrc
mkdir ~/.local/share/rofi
sudo apt install curl

# install starship
curl -sS https://starship.rs/install.sh | sh

# installing apps with apt
sudo apt install build-essential

cp ~/.config/.screenlayout ~
# brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# polybar
sudo apt install polybar -y
# arandr 
sudo apt install arandr -y

# neofetch
sudo apt install neofetch -y

#lolcat
sudo apt install lolcat -y

# feh
sudo apt install feh -y

# i3 
sudo apt install i3 -y

# alacritty
sudo apt install alacritty -y

# picom
sudo apt install picom -y

# shutter
sudo apt install shutter -y

# pass
sudo apt install pass -y

# otp
sudo apt install pass-otp -y

# numlockx (for numpad)
sudo apt install numlockx -y

# rofi
sudo apt install rofi
# snapd
sudo apt install snapd

# audacity
sudo apt install audacity


# installations with homebrew 
brew install neovim tmux fzf zoxide lazygit

# add rofi themes
cp -r ~/.config/rofithemes/ ~/.local/share/rofi/themes

# installations with snap
sudo snap install whatsdesk lazygit

git clone https://github.com/tmux-plugins/tpm.git ~/.config/tmux/plugins/tpm

git clone https://github.com/adrianetp/wallpapers.git ~/.config/wallpapers
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

source ~/.bashrc

# rofi plugins install (make)
#
cd ~/Downloads
# rofi pass
sudo apt install sed xdotool  xclip  gawk bash  find pwgen 

git clone https://github.com/carnager/rofi-pass.git
cd rofi-pass
sudo make

cd ..

# rofi emoji
git clone https://github.com/Mange/rofi-emoji.git
cd rofi-emoji


sudo apt install rofi-dev autoconf automake libtool-bin libtool 
autoreconf -i
mkdir build
cd build/
../configure
make
sudo make install

cd ..

# auto-cpufrequency
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
