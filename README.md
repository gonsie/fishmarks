### STILL A WORK IN PROGRESS!

# Fishmarks is a set of fish functions which allow you to save and jump to commonly used directories. 

## Compatability

Fishmarks work with my brach of bashmarks. There is a slightly different format for the .sdirs file, but this can be used with both bash and fish.

## Install

1. git clone git://github.com/gonsie/fishmarks.git
2. make install
3. source **~/.local/bin/bashmarks.sh** from within your **~.bash\_profile** or **~/.bashrc** file

## Shell Commands

    s <bookmark_name> - Saves the current directory as "bookmark_name"
    c <bookmark_name> - Goes (cd) to the directory associated with "bookmark_name"
    c                 - Go to the $HOME directory (cd ~)
    p <bookmark_name> - Prints the directory associated with "bookmark_name"
    d <bookmark_name> - Deletes the bookmark
    l                 - Lists all available bookmarks
    
## Example Usage

    $ cd /var/www/
    $ s webfolder
    $ cd /usr/local/lib/
    $ s locallib
    $ l
    $ c web<tab>
    $ c webfolder

## Where Fishmarks are stored
    
All of your directory bookmarks are saved in a file called ".sdirs" in your HOME directory.

