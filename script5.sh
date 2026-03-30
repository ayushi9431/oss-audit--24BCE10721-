#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ayushi
# Description: Generates a personalized open-source manifesto

echo "Answer the following questions:"
echo ""

# Take user input
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

# Get date
DATE=$(date '+%d %B %Y')

# Output file
OUTPUT="manifesto_$(whoami).txt"

# Write paragraph to file
echo "On $DATE, I reflect on the power of open source. Tools like $TOOL show how collaboration can create impactful technology. To me, freedom means $FREEDOM — the ability to learn, modify, and share without restriction. In the future, I would like to build $BUILD and share it with the world so others can benefit and improve upon it. Open source is not just code, it is a community-driven movement." > $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"

# Display file content
cat $OUTPUT
