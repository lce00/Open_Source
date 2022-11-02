#!/bin/sh

function() {
echo "inside function"
eval ls " $input"
}

echo "start program"
input=$1
function $input
echo "shutdown program"
exit 0
