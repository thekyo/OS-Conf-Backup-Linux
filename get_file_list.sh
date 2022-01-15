#!/bin/bash

if [ $# != 1 ]; then

    echo "need target directory path."
    echo ""
    echo "  usage)"
    echo "  /backup/bin/get_file_list.sh /etc"
    echo ""
    exit 1

else 

    LIST=`echo "${1:1}" | sed -e "s#/#_#g" -e "s#\.#-#g"`
    sudo find $1 -type f > list_${LIST}.txt

    echo ""
    echo "  output > list_${LIST}.txt"
    echo ""

fi

