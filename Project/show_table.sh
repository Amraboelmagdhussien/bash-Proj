#!/usr/bin/bash
   

    
    if [[ ! -d ././Database/$1 ]];then
    echo "This List IS  Empty"
    else 
    echo "***********LIST TABLE**************"
    echo "***********************************"
    ls  $1
    echo "***********************************"
    fi 
