function c -d "fishmarks change to bookmark directory"
         fishmark_help $argv[1]
         fishmark_source
         if test -z $argv
            cd $HOME
            echo $HOME
         else
            set -l target (eval echo \$(echo DIR_(echo $argv[1])))
            set -l warn (set_color $fish_color_error)
            if test -d $target
               cd $target
               echo $target
            else if not test -n $target
               echo -e $warn "WARNING: $argv[1] fishmark does not exist"
            else
               echo -e $warn "WARNING: $target does not exist"
            end
         end
end
