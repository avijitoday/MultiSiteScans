#!/bin/bash

while read -r command; do
    echo "Scanning $site..."
    #dirsearch -u "$site" -f -e html,php,tar.gz,txt,xml,zip -r
    gnome-terminal --tab --title="Terminal" -- bash -c "$command; exec bash"
    # Add any additional options or flags as needed
done < commands_list.txt

