#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#Finding the word number 9732 in rockyou.txt

count = 0

with open("rockyou.txt") as archivo:
    for line in archivo:
        count +=1
        if count == 9732:
            print(line)
        
    