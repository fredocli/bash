

## Requirement

	sudo apt-get install diodon diodon-plugins
	sudo apt-get install sharutils
	sudo apt-get install xclip
	sudo apt-get install imagemagick
	sudo apt-get install nautilus-script-manager
	sudo apt-get install realpath

## Install

	# Make the script executable
	chmod +x ./imageTobase64.sh

	# Create a symlink into the nautilus-scripts folder
	ln -s $(realpath ./imageTobase64MD.sh)  ~/.gnome2/nautilus-scripts/imageTobase64MD
	ln -s $(realpath ./imageTobase64MD.sh)  /usr/bin/imageTobase64MD

## Usage 
* in a terminal
 
>imageTobase64 logo.png

* With nautilus

>left clik -->scripts-->imageTobase64