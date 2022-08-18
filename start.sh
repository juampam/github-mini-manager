#!/bin/bash
user=$(sed -n 1p ~/.gituserdata)
pass=$(sed -n 2p ~/.gituserdata)

sed -i "$n s/USERNAME/$user/g" styles/example.css
sed -i "$n s/TOKEN/$pass/g" styles/example.css

./log.exp



