#!/bin/bash

# Based on http://askubuntu.com/questions/9135/how-to-backup-settings-and-list-of-installed-packages

dpkg --get-selections > ~/Ubuntu-Config/Package.list
sudo cp -R /etc/apt/sources.list* ~/Ubuntu-Config
sudo apt-key exportall > ~/Ubuntu-Config/Repo.keys
