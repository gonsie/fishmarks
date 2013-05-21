function l -d "fishmarks list bookmarks matching name"
         fishmark_help $argv
         fishmark_source
         
         if test -z $argv
                set | grep "^DIR_" | cut -c5- | sort
         else
                # only the simplest matching
                set | grep "^DIR_$argv" | cut -c5- | sort
         end
end
