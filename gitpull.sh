#!/bin/bash

#Change directory to ~/NicheImage
cd ~/healthcare-subnet

 #Git pull to update the repository
git pull

#Install Python dependencies from requirements.txt
pip install -r requirements.txt

#Install the package in editable mode
pip install -e .

#Restart all PM2 processes
pm2 restart all

#Monitor PM2 processes
pm2 log
