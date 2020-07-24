function rhost
  awk '
    $1 == "Host" { 
        key = $2; 
        next; 
    } 
    $1 == "HostName" { 
        host = $2; 
        next; 
    } 
    $1 == "Port" { 
        port = $2; 
        next; 
    } 
    $1 == "User" { 
        user = $2; 
        next; 
    } 
    $1 == "IdentityFile" { 
        $1 = ""; 
        sub( /^[[:space:]]*/, "" ); 
        printf "%s - %s@%s:%s %s\n", key, user, host, port, $0;
    }
  ' ~/.ssh/config
end

