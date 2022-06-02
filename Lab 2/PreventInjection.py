import re 

def PreventInjection(input):
    input = str(input)
    if (re.search("^([a-zA-Z0-9 ]){1,200}$", input)):
        print("Buen trabajo! ")
    else:
        print("!Solo strings¡ ")

user_input = input("Escriba su nombre: ")
PreventInjection(user_input)
