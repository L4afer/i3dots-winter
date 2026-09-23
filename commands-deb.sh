
#Downloads all of the needed shit
sudo apt-get install polybar i3 kitty nvim neofetch rofi xclip scrot feh picom betterlockscreen

#Stuff for the terminal
sudo apt-get install zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#Copy the dotfiles
cp -r ~/Downloads/i3dots-winter/.config/betterlockscreen ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/picom ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/nvim ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/polybar/ ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/rofi ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/neofetch ~/.config
cp -r ~/Downloads/i3dots-winter/.config/kitty ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/kitty/.zshrc ~/
rm -rf ~/.config/i3/
cp -r ~/Downloads/i3dots-winter/.config/i3 ~/.config/
i3 reload 
~/.config/i3/polr.sh
betterlockscreen -u ~/.config/i3/WinterBlue768p.png
sudo chmod +x ~/.config/i3/scrot.sh
sudo chmod +X ~/.config/i3/scrot1.sh
sudo chmod +x ~/.config/i3/kblayout.sh
sudo chmod +x ~/.config/i3/polr.sh

nvim --headless "+Lazy! sync" +qa

echo "Fonts used: Monocraft, Departure Mono nerd fonts"
