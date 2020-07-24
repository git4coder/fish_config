function proxy -d "print or set HTTP proxy"
    if set -q argv[1]
        if [ $argv[1] = "clear" ]
            set -e HTTP_PROXY
            set -e HTTPS_PROXY
        else
            set -l last $HTTP_PROXY
            set -gx HTTP_PROXY $argv[1]
            set -gx HTTPS_PROXY $argv[1]
        end
        return 0
    else
        echo $HTTP_PROXY
    end
end

