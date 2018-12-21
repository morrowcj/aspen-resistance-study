#!/bin/bash
## script to update the data folder
## usage: bash update-data.sh

rsync -urv --exclude=*.qld \
/home/morrowcj/mnt/Box.com/lab-resources/projects/Hilldale/Data/ \
/home/morrowcj/Documents/holstrom-resistance-study/data/
