# Bash Script to Delete Old Files  
    
  Im not able to keep my Downloads folder clean. So i asked chatgtp to write this script for me which autodeletes everything after one week. 
  This bash script checks a given folder for files older than a specified time period and moves them to the trash. It can also notify the user if any files were deleted using a notification.  
## Getting Started  
### Prerequisites  
- `bash` shell  
- `find` command  
- `trash` command (optional)  
- `notify-send` command (optional)  
### Installing  
- Download the script file to a directory of your choice.  
- Make the script file executable with the command `chmod +x script.sh`.  
- ### Usage  
    
  To run the script, open a terminal and navigate to the directory containing the script file. Then, run the script with the command:  
        
  ```
  ./keep_it_clean.sh
  ```
    
  By default, the script checks the `/home/Downloads/` directory for files older than 7 days and moves them to the trash. If any files are deleted, it displays a notification.  
### Customizing  
    
  You can customize the behavior of the script by modifying the following variables at the top of the script:  
- `directory`: The directory to check for old files.  
- `days`: The number of days after which files should be considered old and deleted.  
    
  If you don't have the `trash` command installed, you can remove the `-exec trash {} \;` part of the `find` command to permanently delete the old files instead of moving them to the trash.  
    
  If you don't have the `notify-send` command installed, you can install it using the following command:  

    
  ```
  sudo pacman -S libnotify
  ```
    
  Note that `notify-send` requires a graphical user interface to display notifications, so you may need to run this script as a normal user and not as root to display the notification.  
- ### Running on Every Boot (Optional)  
    
  If you want to run the script on every boot, you can add it to `crontab`. To do this, open a terminal and run the following command:  
    

    
  ```
  crontab -e
  ```
    
  This will open `crontab` in your default text editor. Add the following line to the end of the file to run the script on every boot:  

    
  ```
  @reboot /path/to/eep_it_clean.sh
  ```
    
  Replace `/path/to/keep_it_clean.sh` with the actual path to the script file. Save and close the file.  
    
  Note that running the script on every boot can be dangerous if you don't thoroughly test it and ensure that it does not delete any important files. You should also ensure that the script does not interfere with other system processes or slow down the boot process.
