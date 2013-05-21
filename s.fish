function s -d "fishmarks save (stolen from bashmarks)"
         fishmark_help $argv[1]
         fishmark_source
         fishmark_name_valid $argv
         fishmark_purge_line $SDIRS "DIR_$argv[1]"
         echo "DIR_$argv[1]" (pwd) >> $SDIRS
end
