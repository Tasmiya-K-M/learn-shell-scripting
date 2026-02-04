echo hello world

# print in some color
# syntax : echo -e "\e[COLmMESSAGE\e[0m"
# -e - enable colors
# \e[COLm - to enable certain color
# \e[0m - to disable color which is enabled
# COL stands for color and possible colors are RED(31), GREEN(32), YELLOW(33), BLUE(34), MAGENTA(35), CYAN(36)

echo -e "\e[31m Hello in Red Color\e[om"
echo -e "\e[32m Hello in Green Color\e[om"
echo -e "\e[33m Hello in Yellow Color\e[om"
echo -e "\e[34m Hello in Blue Color\e[om"
echo -e "\e[35m Hello in Magenta Color\e[om"
echo -e "\e[36m Hello in Cyan Color\e[om"