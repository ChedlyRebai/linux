#!/bin/bash

count=$(ls -l /usr/share/pixmaps/*.png | wc -l)
echo "count png: $count"

countjpg=$( find /usr/share/pixmaps/*.png -type f -name  "*.jpg" | wc -l)
echo "count jpg:$countjpg"