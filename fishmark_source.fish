function fishmark_source -d "set up bookmark file"
         set -g SDIRS ~/.sdirs
         if not test -e $SDIRS
            touch $SDIRS
         else
            set -l __ns (cut -f1 -d' ' $SDIRS)
            set -l __ds (cut -f2 -d' ' $SDIRS)
            set -l __i (wc -l $SDIRS | cut -f8 -d' ')
            while test $__i -ne 0
                  set -g $__ns[$__i] $__ds[$__i]
                  set __i (math $__i - 1)
            end
         end
end