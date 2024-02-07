Monitor=$(xrandr --query | grep "HDMI-A-0 disconnected")

if [ -n "$Monitor" ]; then
    echo 'not connected'
    ~/.screenlayout/bar.sh
else
    echo 'conected'
    ~/.screenlayout/foo.sh
fi
