# exit status of a command
# it will check whether the recent command executed successfully or not
# exit status ranges (0 - 255)
# success=0 failure=[1-255]
# check exit status through echo $?

a=5
echo $?

# by default the exit status of exit is 0, when "exit 1" it will return "1"
echo hello
exit
echo bye