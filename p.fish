function p -d "fishmarks list location of bookmark"
         fishmark_help $argv
         fishmark_source
         
         if test -z $argv
            echo $HOME
         else
            cat $SDIRS | grep "^DIR_$argv" | cut -f2 -d' '
         end
end
