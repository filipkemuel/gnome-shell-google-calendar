#!/bin/sh
echo _________________________________________________
echo     Installing Gnome-Shell-Google-Calendar     
echo -------------------------------------------------
echo 
echo 1. Installing dependencies...
sudo yum install dbus-python pygtk2 python-gdata python-iso8601 gtk-murrine-engine gtk-equinox-engine
sudo apt-get install dbus-python pygtk2 python-gdata python-iso8601 gtk-murrine-engine gtk-equinox-engine
echo 2. Creating data directory...
sudo mkdir /usr/share/gnome-shell-google-calendar
echo 3. Copying files...
sudo cp *.py /usr/share/gnome-shell-google-calendar/
sudo cp test /usr/share/gnome-shell-google-calendar/
sudo cp README /usr/share/gnome-shell-google-calendar/
sudo cp excludes-example /usr/share/gnome-shell-google-calendar/
sudo cp gsgc.desktop /usr/share/gnome-shell-google-calendar/
sudo chmod a+rx /usr/share/gnome-shell-google-calendar/gsgc.desktop
sudo cp gnome-shell-google-calendar /usr/bin/
sudo cp gcal-user-setup /usr/bin
echo 4. Making program executeable...
sudo chmod a+rx /usr/bin/gnome-shell-google-calendar
sudo chmod a+rx /usr/bin/gcal-user-setup
echo 5. Making dirty hack to enable Google Calendar in date menu...
sudo cp evolution /usr/local/bin
sudo chmod a+rx /usr/local/bin/evolution
sudo cp google-calendar.desktop /usr/share/applications
sudo chmod a+rx /usr/share/applications/google-calendar.desktop
sudo echo "text/calendar=google-calendar.desktop" >> /usr/share/applications/defaults.list
echo 6. Running user setup
gcal-user-setup

