#!/bin/bash
user=$(sed -n 1p ~/.gituserdata)
pass=$(sed -n 2p ~/.gituserdata)

sed -i "$n s/USERNAME/$user/g" log.exp 
sed -i "$n s/TOKEN/$pass/g" log.exp

./log.exp



