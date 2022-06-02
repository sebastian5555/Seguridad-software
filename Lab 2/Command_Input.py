#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#type of input, float, int or string


def type_input(var):
    try:
        print("Es un numero entero:", int(var) )
    except ValueError:
        try:
            print("Es un numero flotante:", float(var) )
        except ValueError:
            print("Es un string:", var)

user_input = input(" Escriba algo: ")
type_input(user_input)