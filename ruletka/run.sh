
###############################################
# Global varibles
###############################################
padding=2
rouletteSize=60
itemsFile=items.txt
###############################################

function max() {
  local array=("$@")
  local m=-1
  for x in ${array[@]}
  do
    if [ ${#x} -gt $m ]
    then
        m=${#x}
    fi
  done
  return $m
}

echo "Vitej v ruletě, piš na řádky kdo všechno se účastní"
echo "Jakmile budeš hotov, odentruj prázdný řádek a roztočí se ruleta"
echo "Pokud chceš stejné soutěžící jací byli předchozí kolo, tak stiskni pouze enter"

###############################################
# Getting all of the contestants
###############################################
items=()
i=0
loaded=0
while [ true ]
do
  echo -n ": "
  read user
  if [ -z $user ] && (( $i == 0 )); then
    loaded=1
    str="`cat $itemsFile`"
    if [ -z $str ]; then
      echo "$itemsFile soubor nebyl nalezen"
      exit 2
    fi
    items=(${str// / })
    break
  elif [ -z $user ]; then
    break
  fi
  items+=($user)
  i+=1
done
###############################################

if (( $loaded == 0 )); then
  rm items.txt
  for item in ${items[@]}
  do
    echo $item >> "items.txt"
  done
fi

length=${#items[@]}
max ${items[@]}
chars=$(($? + $padding * 2))

###############################################
# Crate a row string for roulette
###############################################
row=""
for item in ${items[@]}
do
  if (( ($chars - ${#item} ) % 2 != 0)); then
    item+=" "
  fi
  L=$(( ( $chars - ${#item} ) / 2 ))
  row+="$(printf "%${L}s%s%${L}s|" "" "$item" "" )"
done
rows+="$row$row$row$row$row$row$row$row"
###############################################

printf 'Soutěžící: %s\n' "${items[*]}"
echo -n "Stiskni enter pro roztočení rulety"
read user

###############################################
# Chances and text roulette spinning logic
###############################################
rand=$(( $RANDOM % ($length * ($chars + 60) ) + 100))

a=$(($rand / ( 2 ) + $rand / 5 ))
b=$(($rand / ( 2 ) + $rand / 3 ))
c=$(($rand / ( 2 ) + $rand / 3 + $rand / 10 ))

printf "%$(($rouletteSize / 2))s \n" "v" 
for i in `seq 0 $rand`
do
  # Debuggigng purposes
  # printf "%$(($rouletteSize / 2))s %d %d %d %d %d \n" "v" $rand $i $a $b $c
  printf "\r${rows:$(( $i % (${#rows} / 2) )):$(( ($rouletteSize ) ))}"
  
  if   (( $i < $a )); then
    :
  elif (( $i < $b )); then
    sleep .001
  elif (( $i < $c )); then
    sleep .01
  else
    sleep .1
  fi
done
echo 
###############################################


###############################################
# Print the winner
###############################################
# chars=$(( $chars + 1 ))
# winner=$(( ( ( ( $rand + $chars / 3 ) / ( $chars + 1 ) ) + ( ( $rouletteSize ) / 2 / ( $chars + 1 ) ) ) % $length ))
# echo Výherece: ${items[$winner]}
###############################################
