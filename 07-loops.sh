#if we want to repeat the same code multiple times, we will use loops concept

a=10
while [ $a -gt  0 ]; do
    echo hello world
    a = $(($a-1))
done