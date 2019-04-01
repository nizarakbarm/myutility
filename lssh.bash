#!/bin/bash

ip=$(host $1 | grep "has address" | cut -d" " -f4)
hs=$(host $ip | cut -d" " -f5 | cut -d"." -f1)
ssh $hs
