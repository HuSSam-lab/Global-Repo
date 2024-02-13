import math


def my_function():

    inn = input("Enter 4 number \n")
    l = inn.split()

    for i in range(4):
        print("factorial of: ", l[i], "is", math.factorial(int(l[i])), "\n")


my_function()
