#!/bin/bash

# Arc Dark theme for gedit and other text editors by GameTheory

ARC_DARK=arc-dark.xml
GTK2=/usr/share/gtksourceview-2.0/styles/$ARC_DARK
GTK3=/usr/share/gtksourceview-3.0/styles/$ARC_DARK

sudo cp -f $ARC_DARK $GTK2
sudo ln -f -s $GTK2 $GTK3
CHECK=$?
if [ $CHECK -eq 0 ]; then
	echo "Arc Dark theme successfully installed."
else
	echo "Sorry. Could not install theme."
fi
