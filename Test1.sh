#!/bin/sh
i=0

while [ $i -le 5 ]
do
   echo -e "\033[41;36m Run >>>>>> $((i++)) <<<<<< \033[0m"
   echo -e " Clear CMOS .."
   echo -e " outb --write 0x72 0x9f "
    outb --write 0x72 0x9f
   echo -e " outb --write 0x73 0x55 "
    outb --write 0x73 0x55

# Wait 5 seconds.
   echo -n " Waiting 5 seconds  [["
   for k in 1 2 3 4 5 6 7 8 9 10
    do
       echo -n ">>>"
       sleep 0.5
    done
   echo -n "]] "

#  ./SCELNX_64 /o /s $i.txt

done
   echo
   echo -e "\033[43;36m   Test Finished ....... \033[0m"
