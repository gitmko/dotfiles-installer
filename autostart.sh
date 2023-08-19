oscheck="$(grep -Po "(?<=^ID=).+" /etc/os-release | sed 's/"//g')"

if [[ $oscheck == "arch" ]] 
then
	/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
elif [[ $oscheck == "debian" ]]
then
    /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
elif [[ $oscheck == "fedora" ]]
then
    /usr/libexec/polkit-gnome-authentication-agent-1 &
fi

volumeicon &
dunst &
picom -b &
conky -c $HOME/.config/conky/dwm-nord.conkyrc &
bash $HOME/.dwm/scripts/bar &
bash $HOME/.fehbg &
