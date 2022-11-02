#!/bin/sh

echo "Is Linux fun? (yes / no)"

read reply

case $reply in
	Y | yes | yep)
		echo "yes" ;;
	no | N | nonono)
		echo "no" ;;
	*)
		echo "answer in 'yes' or 'no' please!"
		exit 1 ;;
esac
exit 0
