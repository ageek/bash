#!/bin/bash

today=$(date)

echo "Today " $today


#date  --date="STRING"
#date  --date="next Friday"
#date  --date="2 days ago"
#date  --date="yesterday"
#date  --date="yesterday" +"%format"
# Get yesterday's date in dd-mm-yy format
#date  --date="yesterday" +"%d-%m-%y"

echo "Tomorrow " $(date --date="next day")


