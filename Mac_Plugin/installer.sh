#!/bin/bash

# ###########################################
# SCRIPT : DOWNLOAD AND INSTALL MAC CHANGER PLUGIN
# ###########################################
#
# Command: wget https://raw.githubusercontent.com/soomarali/MAC-Changer/main/Mac_Plugin/installer.sh -qO - | /bin/sh
#
# ###########################################

###########################################
# List of file URLs to download
urls=(
    "https://raw.githubusercontent.com/soomarali/MAC-Changer/main/Mac_Plugin/MAC.tar.gz"
    
    # Add more URLs for the remaining files
)

# Destination directory to save the downloaded files
destination="/tmp/MAC"

# Create the destination directory if it doesn't exist
mkdir -p "$MAC"

# Variable to track the completion status
completed=false

# Iterate over the URLs and download each file
for url in "${urls[@]}"; do
    filename=$(basename "$url")
    wget -P "$destination" "$url"

 echo "MAC CHANGER PLUGIN MADE BY ASGHAR ALI"
 echo "FOR DREAMWORLD & ENIGMA2 LOVERS"
 echo "SUPPORT: 03357300604"
 echo "file Downloaded now Extracting: $filename"

    # Extract the downloaded file
    tar -xzvf "$destination/$filename" -C "/"

    # Remove the downloaded tar.gz file
    rm "$destination/$filename"
# Check if all files have been processed
    if [[ "$filename" == "${urls[-1]}" ]]; then
        completed=true
        break
    fi
done
# Display message based on completion status
if "$completed"; then
    echo "PLUGIN downloaded and INSTALLED successfully."
else
    echo "Script execution incomplete."
fi
sleep2
clear
echo ""
echo "***********************************************************************"
echo "**                                                                    *"
echo "**                       MAC CHANGER : PLUGIN                         *"
echo "**                       Uploaded by : ASGHAR ALI                     *"
echo "**                       Develop FOR : DREAMWORLD                     *"
echo "**                       Support     : 03357300604                    *"
echo "**                                                                    *"
echo "***********************************************************************"
echo ""
killall -9 enigma2
exit 0
