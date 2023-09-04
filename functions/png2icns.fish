function png2icns --description '.png to .icns'
  if test (count $argv) -lt 1
    echo "Usage: $_ file_name.png"
    return
  end

  set --function file $argv[1]
  set --function dir  (dirname $file)
  set --function name (basename $file)
  set --function prev (string replace -r '^(.*?)(\.[^.]+)$' '$1' $name)
  set --function ext  (string replace -r '^(.*?)(\.[^.]+)$' '$2' $name)

  if test (string length $prev) -lt 1
    set --function prev untitled
  end

  if [ (string lower $ext) != ".png" ]
    echo "Error: only supports png files"
    return
  end

  #echo file: $file
  #echo  dir: $dir
  #echo name: $name
  #echo prev: $prev
  #echo  ext: $ext

  mkdir $prev.iconset
  sips -Z   16 $file --out $prev.iconset/icon_16x16.png
  sips -Z   32 $file --out $prev.iconset/icon_16x16@2x.png
  sips -Z   32 $file --out $prev.iconset/icon_32x32.png
  sips -Z   64 $file --out $prev.iconset/icon_32x32@2x.png
  sips -Z  128 $file --out $prev.iconset/icon_128x128.png
  sips -Z  256 $file --out $prev.iconset/icon_128x128@2x.png
  sips -Z  256 $file --out $prev.iconset/icon_256x256.png
  sips -Z  512 $file --out $prev.iconset/icon_256x256@2x.png
  sips -Z  512 $file --out $prev.iconset/icon_512x512.png
  sips -Z 1024 $file --out $prev.iconset/icon_512x512@2x.png
  iconutil -c icns -o $prev.icns $prev.iconset
end

