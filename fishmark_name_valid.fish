function fishmark_name_valid -d "determine if a fishmark exists"
         if not test $argv[1] = (echo $argv[1] | sed 's/[^A-Za-z0-9_]//g')
            echo "invalid bookmark name"
            kill -SIGINT %self
         end
end
