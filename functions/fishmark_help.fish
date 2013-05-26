function fishmark_help -d "prints fishmarks help if flagged"
         # note: cannot use contains because of "-h" override
         set __help 0
         for h in $argv
             if test $h = "-h"
                set __help 1
             else if test $h = "-help"
                set __help 1
             else if test $h = "--help"
                set __help 1
             end
         end
         if test $__help -eq 1
                echo ""
                echo "s <bookmark_name> - Saves the current directory as a 'bookmark_name'"
                echo "c <bookmark_name> - Goes (cd) to the directory associated with 'bookmark_name'"
                echo "c                 - Goes to home directory (cd ~)"
                echo "p <bookmark_name> - Prints the directory associated with 'bookmark_name'"
                echo "d <bookmark_name> - Deletes the bookmark"
                echo "l                 - Lists all available bookmarks"
                kill -SIGINT %self
         end
end
