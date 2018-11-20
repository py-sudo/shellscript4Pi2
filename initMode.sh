#!/bin/sh

for i in 0 1 2 3 4
do
	gpio mode $i out
	gpio write $i 0
done

gpio mode 5 in
gpio mode 5 up

