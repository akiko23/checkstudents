if [[ ! -f $1 || ! -f $2 ]]; then
  echo "Аргументы не были переданы или они не являются файлами"
  exit 1
fi

c1=0
c2=0
while read line
do
  c1=$(($c1+1))
done < $1


while read line
do
  c2=$(($c2+1))
done < $2

if [[ $c1 -eq $c2 ]]; then
  echo true
else
  echo false
fi

