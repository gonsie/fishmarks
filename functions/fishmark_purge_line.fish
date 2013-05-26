function fishmark_purge_line -d "remove a line from bookmark file"
         if test -s $argv[1]
            # safely create a temp file
            set t (mktemp -t fishmarks.XXXXXX); or exit 1
# NOTE: trap is broken on OS X for right now
#            trap "rm -f -- $t" EXIT

            # purge line
            sed "/$argv[2]/d" "$argv[1]" > "$t"
            mv "$t" "$argv[1]"

            # cleanup temp file
            rm -f -- "$t"
#            trap - EXIT
         end
end
