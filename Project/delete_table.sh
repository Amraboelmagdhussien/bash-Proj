#!/usr/bin/bash

read -p "Enter table Name You Want To Delete : "   name_table

while [[ true ]] 
do
    if [[ "$name_table" = *" "* ]]; then
        echo 
        echo -e "${RED}Spaces Are Not Allowed!${NC}"
        return
    fi
    if [[ $name_table == *['!'@#\$%^\&*()-+\.\/]* ]]; then
          echo 
          echo -e "${RED} ! @ # $ % ^ () + . -  are not allowed!${NC}"
         return
    fi
    if [[ ! -f ././Database/$1/$name_table ]];then
    echo "This table ISN'T  Exits"
    return
    else 
    rm ././Database/$1/$name_table
    fi 
done



