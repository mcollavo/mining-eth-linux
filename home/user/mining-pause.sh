#!/bin/bash

service startmining stop
sleep 360
service startmining start
while true; do 
	tail -n 20 ~/mining/log/mine-pool-ethermine.org.log
	/home/mcollavo/git/ROC-smi/rocm-smi 
	sleep 10 
done

