from random import *
from subprocess import call
import math
import time
import numpy as np

strings = ["./quicksort", "./bubblesort", "./mergesort", "./insertionsort"]

#Value Range testing
#values 0.10 -- 

#nElement Testing
#number_elements_test = [1000, 2500, 5000, 7500, 10000]
number_element = np.linspace(500, 10000, num=20)

#nProbability Testing
# 1/25 1/100 1/300 1/500
# number_probability_test = [0.04, 0.01, 0.0033, 0.002]
number_probability = np.linspace(0.002, 0.04, num=5)

number_value_range = [0.25, 0.50, 0.75]

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

for algorithm in strings:
    print("Running tests for: " + algorithm)
    for value_range in number_value_range:
        for probability in number_probability:
            for elements in number_element:
                elements = int(elements)
                probability = round(probability, 3)
                

                maxr = math.ceil(value_range * elements)
                f = open("out/value_range.txt","a+")
                f.write(str(value_range))
                f.write("\n")
                f.close()

                f = open("out/probability.txt","a+")
                f.write(str(probability))
                f.write("\n")
                f.close()

                f = open("out/elements.txt","a+")
                f.write(str(int(elements)))
                f.write("\n")
                f.close()

                for k in range(5):
                    f = open("data.in","w")
                    time.sleep(1)
                    f.write(str(probability) + " " + str(elements))
                    for z in range(elements):
                        m = str(randint(1, maxr))
                        f.write(" " + m)
                    f.write("\n")
                    f.close()
                    print("     Running test: " + str(k+1) + "/5")
                    call(algorithm + " < data.in", shell = True)