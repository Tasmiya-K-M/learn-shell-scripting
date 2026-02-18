manual approch-->script automation-->configuration management tool-->

<!-- Topics in shell script -->
1. Comments
2. Printing
3. Variables
4. Functions
5. Conditions
6. Loops
7. Inputs
8. Exit status
9. Quotes
10. Redirectors
11. Sed Editor

<!-- problems of shell scripting -->
1. shell script is Imperative(can you do this) not declarative(do this). 
2. shell script is homogeneous (no guarantee it will work on other OS).
3. At scale shell is pain(when multiple machines).

<!-- configuration management tool -->
Tools that helps in making OS level changes with much more advanced features are tools considered under configuration management tool.
        1. CFEngine
        2. Puppet
        3. Chef
        4. Ansible 
            Ansible solves shell problems
                1. ansible is declarative(do this). 
                2. ansible is hetrogeneous by default(it will work on other OS).
                3. ansible can scale to large infrastructure.

<!-- ANSIBLE -->
Ansible supports both push and pull, we need to understand what works for us better and we need to choose one or both according to our requirements.

1. How ansible manages the node? 
    ansible uses SSH

ping other server from ansible server using user and password
    for single node --> ansible -i private_ip, all -m ping -e ansible_user=user -e ansible_password=password (all groups)
    for multiple nodes --> ansible -i /tmp/inv all -m ping -e ansible_user=user -e ansible_password=password
    for specific group --> ansible -i /tmp/inv group_name -m ping -e ansible_user=user -e ansible_password=password
