function d -d "fishmarks delete bookmark"
         fishmark_help $argv[1]
         fishmark_name_valid $argv
         fishmark_purge_line $SDIRS "DIR_$argv[1]"
         set -e DIR_$argv[1]
end
