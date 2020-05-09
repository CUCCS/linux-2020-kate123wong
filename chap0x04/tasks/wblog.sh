#!/usr/bin/env bash
filename="chap0x04/tasks/web_log.tsv"
#filename="web_log.tsv"
function top_hosts() {
  awk -F '\t' 'NR>1 { hosts[$1]++; } 
  END{ for(k in hosts){print hosts[k]"\t"k"\t\n";}
  }' "${filename}" | sort -g -k1 -r | head -100
}
 

function top_ips() {
  awk -F '\t' 'NR>1
  { if(match($1, /^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$/) || match($1,/^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$/)){hosts[$1]++;} }
  END{ for(k in hosts){print hosts[k]"\t"k"\t\n";}
 }' "${filename}" | sort -g -k1 -r | head -100
}


function top_urls() {
  awk -F '\t' 'NR>1 { urls[$5]++;} 
  END{ for(k in urls){print urls[k]"\t"k"\t\n";}
  }' "${filename}" | sort -g -k1 -r | head -100
}
 

function states() {
  awk -F '\t' 'NR>1 { response[$6]++;} END{ for(k in response){ p=100*response[k]/(NR-1); printf("%s\t%.6f%%\t",k,p); print response[k]"\t";} }' "$filename"
}


function code() {
  tmp="$(awk -F '\t' '{ if(match($6,/^4[0-9]{2}$/)){urls[$6][$5]++;} }
  END{ 
  for(k1 in urls){
    for(k2 in urls[k1]){
      print k1, urls[k1][k2], k2;
    }
  }
}' "${filename}" | tee >(sort -k1,1r -k2,2gr | head -10) >(sort -k1,1 -k2,2gr | head -10) > /dev/null)"
  a=0
  for t in $tmp;do
    a=$((a+1))
    if [[ $a%3 -eq 0 ]];then
        printf "%s\t\n" "$t"
    else
      printf "%s\t" "$t"
    fi
  done
}


function top() {
  VAR=$1
  awk -F '\t' '
  NR>1&&$5=="'"${VAR}"'"{ 
      hosts[$1]++;
  } 
  END{ 
    for(k in hosts){
       print hosts[k]"\t"k"\t\n";
    }
   }' "${filename}" | sort -nr -k 2 | head -n -100
}

# help information
function usage() {

  cat <<END_EOF

usage: bash $1 [-h <filename>] [-u <filename> <url>] ...
optional arguments:
  -a            top 100 hosts
  -b            top 100 ips
  -c            top 100 urls
  -d            state codes statistics
  -e            top 10 url with state codes 4xx
  -u            specify url and display top 100 hosts
  --help            show this help message and exit

for example:
  bash $1 -u "/ksc.html"	display top 100 access hosts


END_EOF
}

#params
while getopts "a:b:c:d:e:u:h" opt; do
  case $opt in
    i) 
      info "$OPTARG"
      ;;
    a) 
      top_hosts "$OPTARG"
      ;;
    b)
      top_ips "$OPTARG"
      ;;
    c)
      top_urls  "$OPTARG"
      ;;
    d)
      states  "$OPTARG"
      ;;
    e) 
      code  "$OPTARG"
      ;;
    u) 
      top "$OPTARG"
      ;;
    help|?)
      usage "$0"
      exit 0
      ;;
  esac
done

