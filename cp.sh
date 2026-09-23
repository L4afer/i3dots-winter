cp -r ~/Downloads/i3dots-winter/.config/betterlockscreen ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/picom ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/nvim ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/polybar/ ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/rofi ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/neofetch ~/.config
cp -r ~/Downloads/i3dots-winter/.config/kitty ~/.config/
cp -r ~/Downloads/i3dots-winter/.config/kitty/.zshrc ~/
rm -rf ~/.config/i3
cp -r ~/Downloads/i3dots-winter/.config/i3 ~/.config/
i3 reload
~/.config/i3/polr.sh
betterlockscreen -u ~/.config/i3/WinterBlue768p.png

