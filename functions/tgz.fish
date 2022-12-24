function tgz --description 'tar and gzip folder to folder_timestrap.tgz'
  if test (count $argv) -lt 1
    echo 'Usage: '$_' folder [new_file_name]'
    return
  end

  set --function _folder (string lower $argv[1])

  if test "$_folder" = "."
    or test "$_folder" = "./"
    set --function _folder $PWD
  end

  set --function _basename (basename $_folder)

  if set --query argv[2]
    set --function _basename $argv[2]
  end

  set --function _package_name {$_basename}_$(date '+%Y%m%d%H%M%S').tgz

  tar -zcvf $_package_name $_folder

end

