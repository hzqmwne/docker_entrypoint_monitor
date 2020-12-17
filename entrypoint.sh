#!/bin/sh

isrunning=1

trap "trap \"wait ; exit\" TERM ; isrunning=0 ; kill -15 -$$" TERM

while [ $isrunning -ne 0 ] ; do
	"$@" &
	wait
done

