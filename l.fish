function l -d "fishmarks list all bookmarks"
         fishmark_help $argv
         fishmark_source
         
         cat $SDIRS | cut -c5- | sort
end
