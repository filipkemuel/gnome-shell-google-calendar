#!/bin/sh
echo _________________________________________________
echo     Uninstalling Gnome-Shell-Google-Calendar     
echo -------------------------------------------------
echo 
sudo rm -r /usr/share/gnome-shell-google-calendar
sudo rm /usr/bin/gnome-shell-google-calendar
sudo rm /usr/bin/gcal-user-setup
rm ~/.config/autostart/gsgc.desktop
echo Uninstall finished
