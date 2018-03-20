gnatmake randomsort
gnatmake main
for i in {1..10}
do
  shuf -i 0-149 -n 12 > random.in
  (/usr/bin/time -f "%e" ./main < random.in) 2>> bubble_12.out
  (/usr/bin/time -f "%e" ./randomsort < random.in) 2>> randomsort_12.out
done
