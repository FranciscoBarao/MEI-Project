from random import *
from subprocess import call


n = 20
eps = 1.0/n
maxr = n/2

strings = ["./bubblesort", "./insertionsort", "./mergesort", "./quicksort"]

# i is for the error
# Error used to be 1.0/size of array
# for i in range(10000):
# j is for the size of array
for j in range(10000):
    f = open("data.in","w")
    f.write(str(1.0/j) + " " + str(j))
    for z in range(j):
        f.write(" " + str(randint(z,maxr)))
    f.write("\n")
    f.close()

    f = open("out/size.txt","a+")
    f.write(str(1.0/j) + " " + str(j))
    f.write("\n")
    f.close()
    for z in range(4):
        call([strings[z], "args", "< data.in"])
