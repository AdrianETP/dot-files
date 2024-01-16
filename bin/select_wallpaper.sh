Wall=$(ls ~/.config/wallpapers |rofi -dmenu)

feh --bg-scale ~/.config/wallpapers/$Wall

rm  ~/.config/bin/current_wallpaper.txt

touch ~/.config/bin/current_wallpaper.txt

echo $Wall >> ~/.config/bin/current_wallpaper.txt



