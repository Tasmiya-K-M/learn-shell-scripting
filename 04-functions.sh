function print_hello() {
    echo "hello"
}

print_hello


function print_arguments() {
    echo script name - $0 # print script name
    echo first argument - $1 # print first argument
    echo all arguments - $* # print all arguments
    echo number of arguemnts - $# # print number of arguemnts
}

print_arguments xyz 123

#exit from function use return
exit_sample_demo() {
    echo hi
    return 
    echo hello
}
echo exit status of exit_sample_demo - $?