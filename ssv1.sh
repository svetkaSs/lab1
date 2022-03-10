#!/bin/bash


echo "Developer: Svetlana Shentsova"
echo "Name of Programm: Deleting files"
echo "The to delete files larges than a certian number"

while true; do
echo "Enter path to directory:"

read pathdir

if  [ -d $pathdir ]; then
 echo "Directory succesfully found"
 echo "Enter the size of the file to be deleted:"
 read sizefile
 find $pathdir -size +$sizefile
 find $pathdir -size  +$sizefile -print
 echo "DELETE files larges than " $sizefile " ? (y/n)"
 read yes1
 if [ $yes1 = y ]
 then
  find $pathdir -type f -size +$sizefile -exec rm {} \;
  echo "Files DELETED" 
 break
 else break
 fi
else
echo "Do you wanna continue? (y/n)"
read yes2
 if [ $yes2 = y ]
 then continue
 else break
 fi
fi
done



