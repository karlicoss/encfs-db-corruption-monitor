Long story short: if you have an encfs partition backed by Dropbox, it might get corrupt. See https://superuser.com/questions/949066/input-output-errors-using-encfs-folder-inside-dropbox-folder for more detail

# Running
This will check your mount every 600 seconds

    ./monitor /your-encfs-mount 600
    
# Installing as Systemd service

    ./install-service.sh /your-encfs-mount 600
