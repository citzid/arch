# No widgets enabled!
killall conky
sleep 20s && conky -c "$HOME/.conky/.conkyrc" &
exit 0