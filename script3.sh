#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ayushi | Course:Open Source Software
#Description: Checks directories for permissions, ownership and size

#List Of directives to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]
    then
        #Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        #Print result
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Check Python location (extra part for project)
echo ""
echo "Checking Python location..."
PY_PATH=$(which python 2>/dev/null)

if [ -n "$PY_PATH" ]
then
    ls -ld $PY_PATH
else
    echo "Python not found"
fi
