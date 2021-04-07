NUMBERS = (1 2 3 4 5)

echo $NUMBERS
# 1 
echo ${NUMBERS[2]}
# 3
echo ${NUMBERS[@]}
# 1 2 3 4 5

echo ${#NUMBERS[@]}
# 5

echo ${!NUMBERS[@]}
#0 1 2 3 4 

NUMBERS+=(9)
# appending 9

echo ${NUMBERS[@]:2:5}
