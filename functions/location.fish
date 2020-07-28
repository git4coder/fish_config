function location --description "限制了长度的 $PWD，中间用 ... 代替了"
    set _prefix_len 7
    set _suffix_len 10
    set _pwd (string replace -r '^'"$HOME"'($|/)' '~$1' $PWD)
    set _pwd (string replace -r '^'"/mnt/[a-zA-Z]/Users/$USER"'($|/)' '≈$1' $_pwd) # wsl.exe 下Win用户的目录用双波浪“≈”代替
    set _pwd_len (string length $_pwd)
    set _divider '…'
    set _divider_len (string length $_divider)
    set _cur_path_len (math $_pwd_len + $_divider_len)
    set _max_len (math $_prefix_len + $_suffix_len + $_divider_len)
    set _basename (basename $_pwd)
    set _basename_len (string length $_basename)
    if test $_pwd_len -gt $_max_len
        if test $_basename_len -gt $_suffix_len
            # basename 比 _suffix 长时显示完整的 basename
            set _surplus_len (math $_prefix_len + $_divider_len + $_suffix_len - $_basename_len)
            set _suffix_len $_basename_len
            # 没有剩余空间时不显示 prefix 和 ...
            if test $_surplus_len -lt $_divider_len
              set prefix ''
              set _divider ''
            # 至少能显示下省略号：剩余空间 > _prefix_len + _divider_len
            else
              set _prefix_len (math $_surplus_len - $_divider_len)
              set prefix (string sub --length $_prefix_len $_pwd)
            end
        else
            set prefix (string sub --length $_prefix_len $_pwd)
        end
        set suffix (string sub --start=-$_suffix_len $_pwd)
        echo "$prefix$_divider$suffix"
    else
        echo $_pwd
    end
end

