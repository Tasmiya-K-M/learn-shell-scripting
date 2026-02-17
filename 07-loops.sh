#if we want to repeat the same code multiple times, we will use loops concept

a=10
while [ $a -gt  0 ]; do  # if not sure about iteration go with while
    echo hello world
    a=$(($a-1))
    sleep 1 # wait for 1sec
done


for component in catalogue user cart frontend shipping payment; do
    echo creating component - $component
    sleep 1
done