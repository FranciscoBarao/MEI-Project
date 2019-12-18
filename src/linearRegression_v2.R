# File created for data_v2.out table which has more number of elements   
#
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

tests = 249


#Reciprocal
D = read.table("data_v2.out",header=TRUE, fill=TRUE)
index = 1
for(i in seq(1,4)){
    print(strings[i])
    lr.out = lm(1/D[index:(index+tests), "Longest"] ~ D[index:(index+tests), "SizeN"])
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

    curve((a + b*x),min_number_elements,max_number_elements, xlab = "Number of elements", ylab="Longest Subarray(%)") 
    points(D[index:(index+tests), "SizeN"], 1/D[index:(index+tests), "Longest"])

    #Optional:  y = 1/(a + b*x) || plot(D$year,y)

    index = index + tests + 1 # Value: 50
}


# "quicksort"
print(strings[1])
index = 1
lr.out = lm(D[index:(index+tests), "nSteps"] ~ D[index:(index+tests), "SizeN"])
summ <- summary(lr.out)
print(summary(lr.out))
a = summ$coefficients[1]
b = summ$coefficients[2]
curve(a + b*x,min_number_elements,max_number_elements)
points(D[index:(index+tests), "SizeN"], D[index:(index+tests), "nSteps"], col="red")


# "bubblesort"
print(strings[2])
index = index + tests + 1
lr.out = lm(sqrt(D[index:(index+tests), "nSteps"]) ~ D[index:(index+tests), "SizeN"])
summ <- summary(lr.out)
print(summary(lr.out))
a = summ$coefficients[1]
b = summ$coefficients[2]
curve((a + b*x)^2,min_number_elements,max_number_elements) 
points(D[index:(index+tests), "SizeN"], D[index:(index+tests), "nSteps"], col="red")

curve((a + b*x),min_number_elements,max_number_elements,xlab = "Number of elements", ylab="Number of Swaps") 
points(D[index:(index+tests), "SizeN"], sqrt(D[index:(index+tests), "nSteps"]))

# "mergesort"
print(strings[3])
index = index + tests + 1
lr.out = lm(D[index:(index+tests), "nSteps"] ~ D[index:(index+tests), "SizeN"])
summ <- summary(lr.out)
print(summary(lr.out))
a = summ$coefficients[1]
b = summ$coefficients[2]
curve(a + b*x,min_number_elements,max_number_elements) 
points(D[index:(index+tests), "SizeN"], D[index:(index+tests), "nSteps"], col="red")

# "insertionsort"
print(strings[4])
index = index + tests + 1
lr.out = lm(sqrt(D[index:(index+tests), "nSteps"]) ~ D[index:(index+tests), "SizeN"])
summ <- summary(lr.out)
print(summary(lr.out))
a = summ$coefficients[1]
b = summ$coefficients[2]
curve((a + b*x)^2,min_number_elements,max_number_elements) 
points(D[index:(index+tests), "SizeN"], D[index:(index+tests), "nSteps"], col="red")

curve((a + b*x),min_number_elements,max_number_elements,xlab = "Number of elements", ylab="Number of steps") 
points(D[index:(index+tests), "SizeN"], sqrt(D[index:(index+tests), "nSteps"]))
