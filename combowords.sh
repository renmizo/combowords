mapfile -t myWords < words.txt
size=${#myWords[@]}
z=0

for ((x=0; x<$size; x++)); do
  for ((y=0; y<$size; y++)); do
        myComboWords[$z]=${myWords[$x]}${myWords[$y]}
        myComboWords[$z+1]=${myWords[$y]}${myWords[$x]}
        z=$((z+2))
  done
done

printf '%s\n' "${myComboWords[@]}"
