# yarn build 后打包成 tgz 再打开 finder 调用共享功能发至微信

function yb --description 'yarn build sth.'
  #if test (count $argv) -lt 1
  #  echo 'yarn build [{NODE_ENV}] [{PROJECT_CODE}]'
  #  echo 'Usage: '$_
  #  echo '       '$_' test|preview'
  #  echo '       '$_' test|preview project_code'
  #  return
  #end

  set --function node_env 'production'
  set --function project_code 'dist'

  if set --query argv[1]
    set --function node_env (string lower $argv[1])
  end

  if set --query argv[2]
    set --function project_code $argv[2]
  end

  if test "$node_env" = "production"
    set --function buildParam "build"
  else
    set --function buildParam "build:$node_env"
  end

  yarn $buildParam
  
  if test $status -eq 0
    # 找待打包目录
    set --function package_name {$project_code}_{$node_env}_$(date '+%Y%m%d%H%M%S')_$(string sub --length 7 $(git rev-parse --verify HEAD)).tgz
    set --function folder dist_$node_env
    if not test -d $folder
      set --function folder dist
      if not test -d $folder
        echo (set_color red)$folder" not found"(set_color normal)
        return
      end
    end
    # 打包
    if set --query argv[2]
      tar -zcvf \
        $package_name \
        $folder \
        ;and open -R ./$package_name
        #;and sleep 2
        #;and osascript -e '
        #  tell application "System Events" to tell process "Finder"
        #    set frontmost to true
        #    tell menu bar item "文件" of menu bar 1
        #      #click menu item "共享" of menu "文件"
        #      #click menu item "发送到微信" of menu "共享" of menu item "共享" of menu "文件"
        #      tell menu item "共享" of menu "文件"
        #        click menu item "发送到微信" of menu "共享"
        #      end tell
        #    end tell
        #  end tell
        #'
    end
    # 删除待打包的目录
    if test $status -eq 0
      # 删除编译后的目录
      set --function full_folder_path $PWD"/"$folder
      echo (set_color yellow)"dist folder: "(string replace -r '^'"$HOME"'($|/)' '~$1' $full_folder_path)(set_color normal)
      read be_delete -ft -c "yes" -p "echo (set_color yellow)'delete '$folder' folder[yes/no]'(set_color normal)'> '"
      if test "$be_delete" = "yes"
        rm -rf $full_folder_path
        if test $status -eq 0
          echo (set_color green)"folder "$folder" deleted"(set_color normal)
        end
      else
        echo (set_color yellow)"Command DELETE folder is canceled"(set_color normal)
      end
      # 删除打包后的压缩包
      set --function full_package_path $PWD"/"$package_name
      echo (set_color yellow)"package: "(string replace -r '^'"$HOME"'($|/)' '~$1' $full_package_path)(set_color normal)
      read be_delete -ft -c "yes" -p "echo (set_color yellow)'delete '$package_name' [yes/no]'(set_color normal)'> '"
      if test "$be_delete" = "yes"
        rm -rf $full_package_path
        if test $status -eq 0
          echo (set_color green)"package "$package_name" deleted"(set_color normal)
        end
      else
        echo (set_color yellow)"Command DELETE package is canceled"(set_color normal)
      end
    end
  else
    echo (set_color red)"Command TAR is canceled"(set_color normal)
  end

end

