#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

#Image File Type Filter
IMGS=($(ls *.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF} 2>/dev/null | sort -R))

#Get Number of Images
COUNTER=`expr ${#IMGS[*]} - 1`

#Get Current Directory
CURRENTDIR=$(pwd)

echo
echo "WALLPUNTU - SLIDESHOW MAKER"
echo "==================================="
echo "Original Code from: http://bit.ly/1RT5XL1"
echo "Modified by @virte-c : https://github.com/virte-c"
echo ""
echo "Current Directory: ["$CURRENTDIR"]"
echo "'"$COUNTER"' Images in this Folder."

FILE_NAME=""
while [ ! "$FILE_NAME" ]; do
    read -p 'Set Wallpaper Slideshow Name: ' FILE_NAME
    
#Error Handling
if [ ! "$FILE_NAME" ]
then
    echo ">>Input Can't be Empty"
fi
done

DURATION=""
while [[ ! ($DURATION =~ ^[0-9]+$) ]]; do
    read -p 'Set Wallpaper Duration Time (in Seconds): ' DURATION
    
#Error Handling
if ! [ "$DURATION" -eq "$DURATION" ] 2> /dev/null
then
    echo ">>Input Must Be a Number"
fi
done

TRANSITION=""
while [[ ! ($TRANSITION =~ ^[0-9]+$) ]]; do
    read -p 'Set Wallpaper Transition Time (in Seconds): ' TRANSITION
    
#Error Handling
if ! [ "$TRANSITION" -eq "$TRANSITION" ] 2> /dev/null
then
    echo ">>Input Must Be a Number"
fi
done

echo
echo "Generating XMl File"
echo "________________________"


FILE=$FILE_NAME".xml"

# Random order


echo "<background><starttime></starttime>" > $FILE

for ((i=0;  i<$COUNTER; i++))
do
    echo "<static><duration>$DURATION</duration><file>$CURRENTDIR/${IMGS[$i]}</file></static>" >> $FILE
    echo "<transition><duration>$TRANSITION</duration><from>$CURRENTDIR/${IMGS[$i]}</from>" >> $FILE
    echo "<to>$CURRENTDIR/${IMGS[`expr $i + 1`]}</to></transition>" >> $FILE
    
	printf ".";
done

# last picture to first one
echo "<static><duration>$DURATION</duration><file>$CURRENTDIR/${IMGS[$COUNTER]}</file></static>" >> $FILE
echo "<transition><duration>$TRANSITION</duration><from>$CURRENTDIR/${IMGS[$COUNTER]}</from>" >> $FILE
echo "<to>$CURRENTDIR/${IMGS[0]}</to></transition>" >> $FILE

echo "</background>" >> $FILE

echo
echo "Finished";

IFS=$SAVEIFS
