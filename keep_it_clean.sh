#!/bin/bash

# Set the directory to check and the number of days
directory="/home/user/Downloads/"
days=7

# Check if the directory exists
if [ -d "$directory" ]; then
    # Find all files in the directory older than the specified number of days and move them to the trash
    deleted_files=$(find "$directory" -type f -mtime +"$days" -exec trash {} \; -print)
    
    # Check if any files were deleted
    if [ -n "$deleted_files" ]; then
        # Display a notification notifying the user that files were deleted
        notify-send "Deleted files" "The following files were deleted:\n$deleted_files"
    fi
else
    echo "Directory does not exist"
fi
