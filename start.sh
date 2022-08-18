#!/bin/bash
rm log.exp
user=$(sed -n 1p ~/.gituserdata)
pass=$(sed -n 2p ~/.gituserdata)
echo "#!/usr/bin/expect" >> log.exp
echo spawn ./autocom.sh >> log.exp
printf "expect  \"Username for 'https://github.com':\" {\n" >> log.exp
echo send "$user\r" >> log.exp
echo } >> log.exp
printf "expect  {Password for 'https://juampam@github.com': } {\n" >> log.exp
echo `send "$pass\n"`  >> log.exp
echo } >> log.exp
echo interact

chmod +x  log.exp
./log.exp



