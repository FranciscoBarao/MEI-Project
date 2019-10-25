from random import *
from subprocess import call
import time

strings = ["./bubblesort", "./insertionsort", "./mergesort", "./quicksort"]

#Value Range testing
#values 0.10 -- 
value_range_test = [0.25, 0.5, 0.75, 1]
number_elements_value_range_test = [2500, 7500]
number_probability_value_range_test = [0.01, 0.0033]

#nElement Testing
number_elements_test = [1000, 2500, 5000, 7500, 10000]
value_range_number_elements_test = [0.25, 0.75]
number_probability_number_elements_test = [0.01, 0.0033]

#nProbability Testing
# 1/25 1/100 1/300 1/500
number_probability_test = [0.04, 0.01, 0.0033, 0.002]
number_elements_number_probability_test = [2500, 7500]
value_range_number_probability_test = [0.25, 0.75]

""" 
Tests are in the following format:

value_range_test = [0.25, 0.5, 0.75, 1]
number_elements_value_range_test = [2500, 7500]

0.25 - 2500|0.01   - 5x
0.25 - 7500|0.0033 - 5x
0.5 - 2500|0.01    - 5x
0.5 - 7500|0.0033  - 5x
...
"""


for i in value_range_test:
    for j in range(2):
        value_range = i
        elements = number_elements_value_range_test[j]
        maxr = value_range * elements
        probability = number_probability_value_range_test[j]

        f = open("out/size.txt","a+")
        f.write(str(value_range) + " " + str(probability) + " " + str(elements))
        f.write("\n")
        f.close()
        for k in range(5):
            print("Run number: " + str(k))
            f = open("data.in","w")
            f.write(str(probability) + " " + str(elements))
            time.sleep(1)
            for z in range(elements):
                f.write(" " + str(randint(1, maxr)))
            f.write("\n")
            f.close()
            for z in range(4):
                print("     Running Value range test: " + strings[z])
                call(strings[z] + " < data.in", shell = True)


for i in number_elements_test:
    for j in range(2):
        elements = i
        value_range = value_range_number_elements_test[j]
        maxr = value_range * elements
        probability = number_probability_number_elements_test[j]
        
        f = open("out/size.txt","a+")
        f.write(str(value_range) + " " + str(probability) + " " + str(elements))
        f.write("\n")
        f.close()
        for k in range(5):
            print("Run number: " + str(k))
            f = open("data.in","w")
            f.write(str(probability) + " " + str(elements))
            time.sleep(1)
            for z in range(elements):
                f.write(" " + str(randint(1, maxr)))
            f.write("\n")
            f.close()
            for z in range(4):
                print("     Running number elements test: " + strings[z])
                call(strings[z] + " < data.in", shell = True)

for i in number_probability_test:
    for j in range(2):
        probability = i
        elements = number_elements_number_probability_test[j]
        value_range = value_range_number_probability_test[j]
        maxr = value_range * elements
        
        f = open("out/size.txt","a+")
        f.write(str(value_range) + " " + str(probability) + " " + str(elements))
        f.write("\n")
        f.close()
        for k in range(5):
            print("Run number: " + str(k))
            f = open("data.in","w")
            f.write(str(probability) + " " + str(elements))
            time.sleep(1)
            for z in range(elements):
                f.write(" " + str(randint(1, maxr)))
            f.write("\n")
            f.close()
            for z in range(4):
                print("     Running number probability test: " + strings[z])
                call(strings[z] + " < data.in", shell = True)