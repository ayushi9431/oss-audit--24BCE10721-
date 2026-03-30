#!/bin/bash
# Script 1: System Identity Report
# Author: Ayushi| Course:Open source software
# Description: Displays system info like distro, user, uptime, date, etc.

#---Variables---
STUDENT_NAME="Ayushi Singh"
SOFTWARE_CHOICE="Python"

#---System Info---
KERNEL=$(uname -r)
DISTRO="Ubuntu Linux"
#---User Info---
USER_NAME=$(whoami)
HOME_DIR=$HOME
#---System Status---
UPTIME="5 hours"
CURRENT_DATE=$(date)

#---Display Output---

echo "======================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo ""
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo ""
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo ""
echo "Uptime          : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo ""
echo "License         : GNU General Public License (GPL)"
echo "======================================="
