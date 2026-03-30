#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ayushi | Course:Open Source Software

PACKAGE="python"

# Check if package is installed
if command -v $PACKAGE &> /dev/null
then
    echo "$PACKAGE is installed."
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

# Description using case
case $PACKAGE in
    python)
        echo "Python: an open-source language for automation, AI, and development"
        ;;
    git)
        echo "Git: version control system used by developers worldwide"
        ;;
    vlc)
        echo "VLC: open-source media player that plays almost all formats"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
