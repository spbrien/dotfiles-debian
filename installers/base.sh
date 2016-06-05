#!/bin/bash


# Editors, coding necessities
sudo apt-get update

installs=(
	git
	vim
	curl
	wget
	tmux
	screen
	python-setuptools
	python-dev
	build-essential
	node
	npm
)

function apt_install() {
	for p in "$installs"
	do
	sudo apt-get --yes install $p
	done
}


# Run Apt Installs
apt_install

# Run Python installs
sudo easy_install pip
pip install -r requirements.txt
