function pack --description '用 tar 打包文件'
  if test (count $argv) -lt 1
    echo '压缩文件夹（排除 .git 和 MAC 系统文件'
    echo '  Usage: '$_' folder'
    return
  end

  if set --query argv[1]
    set --function folder $argv[1]
  end

  # 将 . 转换为真实的名称
  if test "$folder" = "."
    set --function folder $PWD
  end

  # 从 PATH 中提取目录名
  set --function folderName (basename $folder)

  # 压缩后的文件名添加时间
  set --function packageName {$folderName}_$(date '+%Y%m%d%H%M%S').tgz

  tar \
      --exclude=.git --exclude=__MACOSX --exclude=.DS_Store \
      -zcvhf \
      $packageName \
      $folder
end

