#!/bin/bash
clear

conda install anaconda-clean
anaconda-clean --yes

rm -rf ~/anaconda3

anaconda-clean --yes~/.anaconda_backup/
rm -rf ~/.anaconda_backup

rm /Applications/Anaconda-Navigator.app