#!/usr/bin/env bash

function usage()
{
  cat <<END_EOF
usage: bash $1 -f <filepath | filename> | -d <directory> [-q <quality>] [-r <scale>] ...


Attention! If image type is not supported,the operation will be skipped. 

optional arguments:
  -f		filename or filepath
  -q		jpeg/jpg compressiblity
  -r		resize by sacle(only png/jpeg/svg)
  -t		draw text watermark in center(only png/jpeg/jpg/svg/bmp)
  -p		add prefix in filename(only png/jpeg/jpg/svg/bmp)
  -s		add suffix in filename(only png/jpeg/jpg/svg/bmp)
  -c		convert png/svg to jpg
  -h		show this help message and exit


END_EOF
}


#file or path
function check()
{
  if [[ -d $1 ]];then
    echo "$1 is a directory" > /dev/null
    is_directory=true
  elif [[ -f $1 ]];then
    echo "$1 is a file" > /dev/null
    is_file=true
  else 
    echo "$1 is not valid"
  fi

}

#jpeg/jpg
function compress()
{ 
  if [[ "$(identify -format "%m" "$2$1")" == "JPEG" ]];then
    convert "$2$1" -quality "$quality" "${2}quality_${quality}_$1"
    tmp="quality_${quality}_$1"
  fi
}

# jpeg/jpg/png/svg
function resize() 
{
  format="$(identify -format "%m" "$2$1")"
  if [[ $format == "JPEG" ]] || [[ $format == "PNG" ]] || [[ $format == "SVG" ]];then
    convert "$2$1" -resize "${scale}%" "$2resized_${scale}_$1"
    tmp="resized_${scale}_$1"
  fi
}


function formatting()
{
  format="$(identify -format "%m" "$2$1")"
  if [[ $format == "PNG" ]] || [[ $format == "SVG" ]];then
    convert "$2$1" "$2$1{1%.*}.jpg"
    tmp="${1%.*}.jpg"
  fi
}


#add prefix or suffix
function prefix_suffix()
{
  format="$(identify -format "%m" "$2$1")"
  if [[ $format == "JPEG" ]] || [[ $format == "PNG" ]] ||  [[ $format == "SVG" ]] || [[ $format == "BMP3" ]];then
    if [[ $is_prefix ]];then
      mv "$2$1" "$2$prefix$1"
      tmp="$prefix$1"
    else
      mv "$2$1" "$2${1%.*}$suffix.${1##*.}"
      tmp="${1%.*}${suffix}.${1##*.}" 
    fi
  fi


}


function watermark()
{
  format="$(identify -format "%m" "$2$1")"  
  if [[ $format == "JPEG" ]] || [[ $format == "PNG" ]] ||  [[ $format == "SVG" ]] || [[ $format == "BMP3" ]];then
    h="$(identify -format "%h" "$2$1")"
    w="$(identify -format "%w" "$2$1")"
    s=$(( h < w ? h/10:w/10))
    convert "$2$1" -opintsize "$s" -fill yellow -gravity center -draw "text 10,10 '$text'" "${2}marked_$1"
    tmp="marked_$1"
  fi

}


function clean()
{
  if [[ "$bk"  != "$tmp" ]];then
    rm "$1$bk"
    bk="$tmp"
  fi
}


#params
while getopts ":f:q:r:t:p:s:ch" opt;do
  case $opt in
    f)
      path="$OPTARG"
      check "$path"
      ;;
    q)
      is_compress=true
      quality="$OPTARG"
      ;;
    r)
      is_resize=true
      scale="$OPTARG"
      if [[ "$scale" == *[!0-9]* ]];then
        echo "not integer"
        exit 1
      elif [[ $scale -le 0 ]];then
        echo "negative or zero image size"
        exit 1
      fi
      ;;
    t)
      is_mark=true
      text="$OPTARG"
      ;;
    p)
      is_rename=true
      is_prefix=true
      prefix="$OPTARG"
      ;;
    s)
      is_rename=true
      suffix="$OPTARG"
      ;;
    c)
      is_convert=true
      ;;
    h|?)
      usage "$0" 
      exit 0
      ;;
  esac
done


if [[ $is_directory ]];then
  files=$(ls "$path")
  d="${path}/";
  for f in $files;do
    tmp="${f##*/}"
    bk=$tmp
    if [[ $is_compress ]]; then compress "$tmp" "$d";fi
    if [[ $is_resize ]];then clean "$d";resize "$tmp" "$d";fi
    if [[ $is_convert ]];then clean "$d";formatting "$tmp" "$d";fi
    if [[ $is_mark ]];then clean "$d";watermark "$tmp" "$d";fi
    if [[ $is_rename ]];then clean "$d";prefix_suffix "$tmp" "$d";fi
    clean "$d";
  done
fi 
  
if [[ $is_file ]];then
      d="${path%/*}/"   
      tmp="${path##*/}"
    bk=$tmp
    if [[ $is_compress ]]; then compress "$tmp" "$d";fi
    if [[ $is_resize ]];then clean "$d";resize "$tmp" "$d";fi
    if [[ $is_convert ]];then clean "$d";formatting "$tmp" "$d";fi
    if [[ $is_mark ]];then clean "$d";watermark "$tmp" "$d";fi
    if [[ $is_rename ]];then clean "$d";prefix_suffix "$tmp" "$d";fi
    clean "$d"
fi
