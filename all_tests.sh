test1=`./task.sh groups/gr1.txt groups/gr2.txt`
if [[ $test1 == true ]]; then
  echo "[TASK1] Test1 passed"
else
  echo "[TASK1] Test1 failed"
  exit 1
fi


test2=`./task.sh groups/gr3.txt groups/gr4.txt`
if [[ $test2 == false ]]; then
  echo "[TASK1] Test2 passed"
else
  echo "[TASK1] Test2 failed"
  exit 2
fi

echo  
test1=`./task2.sh groups/gr1.txt groups/gr2.txt`
if [[ $test1 == true ]]; then
  echo "[TASK2] Test1 passed"
else
  echo "[TASK2] Test1 failed"
  exit 1
fi


test2=`./task2.sh groups/gr3.txt groups/gr4.txt`
if [[ $test2 == false ]]; then
  echo "[TASK2] Test2 passed"
else
  echo "[TASK2] Test2 failed"
  exit 2
fi
