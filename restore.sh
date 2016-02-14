#!/bin/bash

# !!UNTESTED!!

# Based on http://askubuntu.com/questions/9135/how-to-backup-settings-and-list-of-installed-packages

sudo apt-key add ~/Ubuntu-Config/Repo.keys
sudo cp -R ~/Ubuntu-Config/sources.list* /etc/apt/
sudo apt-get update
sudo apt-get install dselect
sudo dpkg --set-selections < ~/Ubuntu-Config/Package.list
sudo dselect
