#!/bin/bash


MF='/data/dena_logs/DeNA_20180419.log'
TF=`cat /data/dena_logs/test`
D=`date +"%Y-%m-%d %H:%M:%S"`
L = 0



while true
do
        let "L=L+1"
        echo  ${L}_${D} ${TF}  >> ${MF}

done