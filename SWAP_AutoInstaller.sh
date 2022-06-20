
#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.
#Set the color variable
red='\033[0;31m'
green='\033[0;32m'
# Clear the color after that
clear='\033[0m'
#Define Size Type
#Check the swap size is less than zero
Init(){
    swap_type = "G"
    printf "Enter swap memory size (GB)\n"
    read size
    if [ $size -le 0 ]
    then
        printf ">${red} Swap size should be greater than zero ${clear}\n"
        Init
fi
swap_amount="$size$swap_type"
#Create a file that will be used for swap
printf ">${green} Creating... File for swap ${clear} \n"
swap_command="fallocate -l $swap_amount /swapfile"
eval $swap_amount
printf ">${green} Done ${clear}"
}
Init

