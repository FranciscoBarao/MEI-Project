# Probability = x
# Algorithm = y
#  number_elements       Longest Subarray    
#       1                      1234               
#       2                      4124               
#       3                      5123               

strings = c("quicksort", "bubblesort", "mergesort", "insertionsort")
min_number_elements = 500
max_number_elements = 10000
a=0
b=0

alg = 300
tests = 19
val = 100
errorProb = 40


#Reciprocal
D = read.table("data.out",header=TRUE, fill=TRUE)
index = 1 + val + errorProb
for(i in seq(1,4)){
    print(strings[i])
    lr.out = lm(1/D[index:(index+tests), "SizeN"] ~ D[index:(index+tests), "Longest"])
    summ <- summary(lr.out)

    print("------------------------PRINTING RESULTS---------------------------")
    #print(summary(lr.out))
    cat("r:  ",summ$r.squared,"\n")
    cat("ra: ",summ$adj.r.squared,"\n")
    cat("a:  ",summ$coefficients[1],"\n")
    cat("b:  ",summ$coefficients[2],"\n")
    print("------------------------------Over---------------------------------")

    a = summ$coefficients[1]
    b = summ$coefficients[2]

    
    curve(1/(a + b*x),min_number_elements,max_number_elements) 
    
    points(D[index:(index+tests), "SizeN"], D[index:(index+tests), "Longest"], col="red")
    #Optional:  y = 1/(a + b*x) || plot(D$year,y)

    index = index + alg
}



print(strings[1])
index = 1 + val + errorProb
lr.out = lm(1/D[index:(index+tests), "SizeN"] ~ D[index:(index+tests), "nSteps"])
summary(lr.out)

print(strings[2])
index = index + alg
lr.out = lm(1/D[index:(index+tests), "SizeN"] ~ D[index:(index+tests), "nSteps"])
summary(lr.out)

print(strings[3])
index = index + alg
lr.out = lm(1/D[index:(index+tests), "SizeN"] ~ D[index:(index+tests), "nSteps"])
summary(lr.out)

print(strings[4])
index = index + alg
lr.out = lm(1/D[index:(index+tests), "SizeN"] ~ D[index:(index+tests), "nSteps"])
summary(lr.out)







# Quicksort
# r^2 -> 0.9828 | r -> 0.9819
# a -> -1.167*10^-4
# b -> 3.106*10^-4
#
# Bubblesort
# r^2 -> 0.8855 | r->0.8791
# a -> -2.764*10^-4
# b -> 8.535*10^-5
#
# Mergesort
# r^2 -> 0.996 | r-> 0.9958
# a -> -3.899*10^-6
# b -> 2.747*10^-4
#
# Insertionsort
# r^2 ->0.9927 | r-> 0.9922
# a -> -6.408*10^-5
# b -> 5.524*10^-4

