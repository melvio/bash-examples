#!/usr/bin/env bash

printf -v num4 "%04d" 4
echo $num4 # 0004

printf -v num4 "%04d"     # no arg given, 0 is assumed
echo $num4 # 0000
