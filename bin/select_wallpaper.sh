Wall=$(ls ~/.config/wallpapers |rofi -dmenu -p "wallpaper")

feh --bg-fill ~/.config/wallpapers/$Wall

rm  ~/.config/bin/current_wallpaper.txt

touch ~/.config/bin/current_wallpaper.txt

echo $Wall >> ~/.config/bin/current_wallpaper.txt



