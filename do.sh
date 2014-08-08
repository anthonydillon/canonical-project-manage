#!/bin/sh
####################################
#
# Common task's I run
#
####################################

case $1 in
    ubuntu)
        cd ~/Documents/Canonical/Branches/fenchurch/live/sites/ubuntu
        bzr up
        subl . &
        cd ../../
        fab runserver
        ;;
    canonical)
        cd ~/Documents/Canonical/Branches/fenchurch-2.0/canonical/
        bzr up site
        subl . &
        make runserver
        ;;
    *)
        echo "$1 command not recognised"
        ;;
esac
