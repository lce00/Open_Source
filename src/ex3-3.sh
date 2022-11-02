#!/bin/sh
weight=$1
height=$2

new_height=$( echo "scale=3; $height/100" |bc )
n_2=$( echo "scale=3; $new_height*$new_height" |bc )
bmi=$( echo "scale=3; $weight/$n_2" |bc )

if [ "$(echo "$bmi < 18.5" |bc)" -eq 1 ]
then
	echo "under weight"
elif [ "$(echo "$bmi >= 23" |bc)" -eq 1 ]
then
	echo "over weight"
else
	echo "normal weight"
fi

exit 0
