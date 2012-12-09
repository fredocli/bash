

## Requirement

	sudo apt-get install diodon diodon-plugins
	sudo apt-get install sharutils
	sudo apt-get install xclip
	sudo apt-get install imagemagick
	sudo apt-get install nautilus-script-manager
	sudo apt-get install realpath
	sudo apt-get shutter

## Install

	# Make the script executable

	chmod +x ./imageTobase64.sh

	# Create a symlink into the nautilus-scripts folder

	ln -s $(realpath ./imageTobase64MD.sh)  ~/.gnome2/nautilus-scripts/imageTobase64MD
	ln -s $(realpath ./imageTobase64MD.sh)  /usr/bin/imageTobase64MD

	# Install the spphase64MD as shutter plugin

	sudo mkdir /usr/share/shutter/resources/system/plugins/shell/spbase64MD/
	sudo ln -s $(realpath ./spbase64MD)  /usr/share/shutter/resources/system/plugins/shell/spbase64MD/spbase64MD
	sudo chmod +x /usr/share/shutter/resources/system/plugins/shell/spbase64MD/spbase64MD


## Usage 
* In a terminal
 
># imageTobase64 logo.png

* With nautilus

>Open nautilus --> select a png file --> Left clik --> scripts --> imageTobase64

* With shutter

> Take a screenshot --> run plugin --> base64MD