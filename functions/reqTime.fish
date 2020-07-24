function reqTime --description "检查 URL 请求的耗时" 
    if set -q argv[1]
        set format ''\
            '   time_namelookup: %{time_namelookup} DNS 域名解析，就是把域名转换成 ip 地址的过程\n'\
            '      time_connect: %{time_connect} TCP 连接建立的时间，就是三次握手的时间\n'\
            '   time_appconnect: %{time_appconnect} SSL/SSH 等上层协议建立连接的时间，比如 connect/handshake 的时间\n'\
            'time_starttransfer: %{time_starttransfer} 从请求开始到第一个字节将要传输的时间\n'\
            '  time_pretransfer: %{time_pretransfer} 从请求开始到响应开始传输的时间\n'\
            '     time_redirect: %{time_redirect} 从开始到最后一个请求事务的时间\n'\
            '        time_total: %{time_total} 此次请求花费的全部时间\n'\
            '       TCP连接时间 = pretransfter - namelookup\n'\
            '    服务器处理时间 = starttransfter - pretransfer\n'\
            '      内容传输时间 = total - starttransfer'
        curl -o /dev/null -s -w "$format" $argv[1]
    else
        echo 'Usage: reqTime url'
    end
end

