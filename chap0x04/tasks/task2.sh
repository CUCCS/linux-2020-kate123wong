#!/usr/bin/env bash

function information()
{
  awk '
  {if(NR==1){print "total fields: "NF; print} }
  END{ print "total records: "NR-1 }' "$1"
}


function num()
{

 awk -F '\t' 'BEGIN{
	a=0
	b=0
	c=0
	}
  NF > 1{
	if( $6 < 20 ) {a++;}
	else if($6 <=30 ) {b++;}
	else {c++;}
  }
  END{
  sum=a+b+c;
  printf("[<20]\t%d\t%.5f\n",a,a/sum);
  printf("[20,30]\t%d\t%.5f\n",b,b/sum);
  printf("[>30]\t%d\t%.5f\n",c,c/sum);
  }' "$1"
}



function position()
{
  awk -F '\t' 'BEGIN{sum=0;}
  NR > 1 {pos[$5]++; sum++;}
  END{
    for (p in pos){printf("%s:\t%d\t%.5f\n",p,pos[p],pos[p]/sum);}
  }' "$1"
  
}



function name()
{
  awk -F '\t' 'BEGIN{min = 9999; max = 0;}
  NR > 1 {
    l=length($9);
    names[$9]=l;
    if(l>max){max=l;}
    if(l<min){min=l;}  
  }
  END{
    for(n in names){
      if(names[n]==max){print "longest name: "n;}
      if(names[n]==min){print "shortest name: "n;}
    }

  }' "$1"

}

function age()
{
  awk -F '\t' 'BEGIN{min = 9999; max = 0;}
  NR > 1 {
    name[$9]=$6;
    if($6>max){max=$6;}
    if($6<min){min=$6;}  
  }
  END{
    for(k in name){
      if(name[k]==max){printf("largest age:\t%d\tname:\t%s\n",name[k],k);}
      if(name[k]==min){printf("smallest age:\t%d\tname:\t%s\n",name[k],k);}
    }

  }' "$1"
}





#help information
function usage()
{
  cat <<END_EOF

usage: bash $1 [-h] [-i]...

optional arguments:
  -i		show information about wordcupplayerinfo.tsv
  -a		count the number and percentage of players in different age ranges
  -b		count the number and percentage of players on different positions
  -d		show the longest and shorest name of players
  -c		show the oldest and youngest players
  --help		show this help information and exit

for examples:
  bash $1 -i		show information about worldcupplayerinfo.tsv

END_EOF
}

while getopts "i:a:b:c:d:h" opt;do
  case $opt in
    i)
      information "$OPTARG"
    ;;
    a)
      num "$OPTARG"
      ;;
    b)
      position "$OPTARG"
      ;;
    d)
      name "$OPTARG"
      ;;
    c)
      age "$OPTARG"
      ;;
    help|?)
      usage "$0"
      ;;
  esac  
done

