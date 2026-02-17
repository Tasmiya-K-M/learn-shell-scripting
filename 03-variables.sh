a=10
echo $a
echo ${a}

# special variables are inputs $0 to $n, $*, $# (pass arguments when running the script)
echo script name - $0 # print script name
echo first argument - $1 # print first argument
echo all arguments - $* # print all arguments
echo number of arguemnts - $# # print number of arguemnts

sum=$((1+1))
echo $sum


today_date=$(date)