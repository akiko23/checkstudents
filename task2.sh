if [[ ! -f $1 || ! -f $2 ]]; then
  echo "Аргументы не были переданы или они не являются файлами"
  exit 1
fi

has_eq=false
while read line
do
  while read line2
  do
    if [[ $line == $line2 ]]; then
      has_eq=true
      break
    fi
    done < $2
done < $1

if [[ $has_eq == true ]]; then
  echo true
else
  echo false
fi


