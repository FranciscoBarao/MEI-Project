library(tcltk)
value_range = readLines("out/value_range.txt");
value_range = as.numeric(value_range)

probability = readLines("out/probability.txt");
probability = as.numeric(probability)


elements = readLines("out/elements.txt");
elements = as.numeric(elements)

quicksort_longest = readLines("out/longest_arr - quicksort.txt");
bubblesort_longest = readLines("out/longest_arr - bubblesort.txt");
mergesort_longest = readLines("out/longest_arr - mergesort.txt");
insertionsort_longest = readLines("out/longest_arr - insertionsort.txt");

quicksort_steps = readLines("out/steps - quicksort.txt");
bubblesort_steps = readLines("out/steps - bubblesort.txt");
mergesort_steps = readLines("out/steps - mergesort.txt");
insertionsort_steps = readLines("out/steps - insertionsort.txt");

value_range_pares = seq(1,150,by=1);
value_range_impares = seq(1,150,by=1);

elements_pares = seq(1,150,by=1);
elements_impares = seq(1,150,by=1);

probability_pares = seq(1,150,by=1);
probability_impares = seq(1,150,by=1);

q_longest = seq(1, 300, by=1)
b_longest = seq(1, 300, by=1)
m_longest = seq(1, 300, by=1)
i_longest = seq(1, 300, by=1)

q_longest_pares = seq(1,150,by=1)
b_longest_pares = seq(1,150,by=1)
m_longest_pares = seq(1,150,by=1)
i_longest_pares = seq(1,150,by=1)

q_longest_impares = seq(1,150,by=1)
b_longest_impares = seq(1,150,by=1)
m_longest_impares = seq(1,150,by=1)
i_longest_impares = seq(1,150,by=1)

q_steps = seq(1, 300, by=1)
b_steps = seq(1, 300, by=1)
m_steps = seq(1, 300, by=1)
i_steps = seq(1, 300, by=1)

q_steps_pares = seq(1,150,by=1)
b_steps_pares = seq(1,150,by=1)
m_steps_pares = seq(1,150,by=1)
i_steps_pares = seq(1,150,by=1)

q_steps_impares = seq(1,150,by=1)
b_steps_impares = seq(1,150,by=1)
m_steps_impares = seq(1,150,by=1)
i_steps_impares = seq(1,150,by=1)

count = 1
min = 1
max = 1500
step = 5
for(i in seq(min, max, by = step)){

    arr = strtoi(quicksort_longest[i : (i + 4)])
    q_longest[count] = mean(arr)
    
    arr = strtoi(quicksort_steps[i : (i + 4)])
    q_steps[count] = mean(arr)

    arr = strtoi(bubblesort_longest[i : (i + 4)])
    b_longest[count] = mean(arr)

    arr = strtoi(bubblesort_steps[i : (i + 4)])
    b_steps[count] = mean(arr)


    arr = strtoi(mergesort_longest[i : (i + 4)])
    m_longest[count] = mean(arr)

    arr = strtoi(mergesort_steps[i : (i + 4)])
    m_steps[count] = mean(arr)


    arr = strtoi(insertionsort_longest[i : (i + 4)])
    i_longest[count] = mean(arr)

    arr = strtoi(insertionsort_steps[i : (i + 4)])
    i_steps[count] = mean(arr)

    count = count + 1
}


count = 1
min = 1
max = 300
step = 2
for(i in seq(min, max, by = step)){
    number_elements_impar = elements[i]
    number_elements_par = elements[i+1]

    q_longest_impares[count] <- (mean(q_longest[i])/number_elements_impar)*100

    q_longest_pares[count] <- (mean(q_longest[i+1])/number_elements_par)*100

    b_longest_impares[count] <- (mean(b_longest[i])/number_elements_impar)*100

    b_longest_pares[count] <- (mean(b_longest[i+1])/number_elements_par)*100

    m_longest_impares[count] <- (mean(m_longest[i])/number_elements_impar)*100

    m_longest_pares[count] <- (mean(m_longest[i+1])/number_elements_par)*100

    i_longest_impares[count] <- (mean(i_longest[i])/number_elements_impar)*100

    i_longest_pares[count] <- (mean(i_longest[i+1])/number_elements_par)*100

    count = count + 1
}

count = 1
min = 1
max = 300
step = 2
for(i in seq(min, max, by = step)){
    q_steps_impares[count] <- mean(q_steps[i])

    q_steps_pares[count] <- mean(q_steps[i+1])

    b_steps_impares[count] <- mean(b_steps[i])

    b_steps_pares[count] <- mean(b_steps[i+1])

    m_steps_impares[count] <- mean(m_steps[i])

    m_steps_pares[count] <- mean(m_steps[i+1])

    i_steps_impares[count] <- mean(i_steps[i])

    i_steps_pares[count] <- mean(i_steps[i+1])

    count = count + 1
}

#Split value range, elements and probability arrays

count = 1
min = 1
max = 300
step = 2
for(i in seq(min, max, by = step)){
    value_range_impares[count] <- mean(value_range[i])

    value_range_pares[count] <- mean(value_range[i+1])

    elements_impares[count] <- mean(elements[i])

    elements_pares[count] <- mean(elements[i+1])

    probability_impares[count] <- mean(probability[i])

    probability_pares[count] <- mean(probability[i+1])

    count = count + 1
}

#Mean
#Longest
q_longest_impares_mean_test1 = mean(q_longest_impares[1:50])
q_longest_impares_mean_test2 = mean(q_longest_impares[51:100])
q_longest_impares_mean_test3 = mean(q_longest_impares[101:150])
q_longest_pares_mean_test1 = mean(q_longest_pares[1:50])
q_longest_pares_mean_test2 = mean(q_longest_pares[51:100])
q_longest_pares_mean_test3 = mean(q_longest_pares[101:150])
m_longest_impares_mean_test1 = mean(m_longest_impares[1:50])
m_longest_impares_mean_test2 = mean(m_longest_impares[51:100])
m_longest_impares_mean_test3 = mean(m_longest_impares[101:150])
m_longest_pares_mean_test1 = mean(m_longest_pares[1:50])
m_longest_pares_mean_test2 = mean(m_longest_pares[51:100])
m_longest_pares_mean_test3 = mean(m_longest_pares[101:150])
i_longest_impares_mean_test1 = mean(i_longest_impares[1:50])
i_longest_impares_mean_test2 = mean(i_longest_impares[51:100])
i_longest_impares_mean_test3 = mean(i_longest_impares[101:150])
i_longest_pares_mean_test1 = mean(i_longest_pares[1:50])
i_longest_pares_mean_test2 = mean(i_longest_pares[51:100])
i_longest_pares_mean_test3 = mean(i_longest_pares[101:150])
b_longest_impares_mean_test1 = mean(b_longest_impares[1:50])
b_longest_impares_mean_test2 = mean(b_longest_impares[51:100])
b_longest_impares_mean_test3 = mean(b_longest_impares[101:150])
b_longest_pares_mean_test1 = mean(b_longest_pares[1:50])
b_longest_pares_mean_test2 = mean(b_longest_pares[51:100])
b_longest_pares_mean_test3 = mean(b_longest_pares[101:150])

#Steps
q_steps_impares_mean_test1 = mean(q_steps_impares[1:50])
q_steps_impares_mean_test2 = mean(q_steps_impares[51:100])
q_steps_impares_mean_test3 = mean(q_steps_impares[101:150])
q_longest_pares_mean_test1 = mean(q_longest_pares[1:50])
q_longest_pares_mean_test2 = mean(q_longest_pares[51:100])
q_longest_pares_mean_test3 = mean(q_longest_pares[101:150])
m_steps_impares_mean_test1 = mean(m_steps_impares[1:50])
m_steps_impares_mean_test2 = mean(m_steps_impares[51:100])
m_steps_impares_mean_test3 = mean(m_steps_impares[101:150])
m_steps_pares_mean_test1 = mean(m_steps_pares[1:50])
m_steps_pares_mean_test2 = mean(m_steps_pares[51:100])
m_steps_pares_mean_test3 = mean(m_steps_pares[101:150])
i_steps_impares_mean_test1 = mean(i_steps_impares[1:50])
i_steps_impares_mean_test2 = mean(i_steps_impares[51:100])
i_steps_impares_mean_test3 = mean(i_steps_impares[101:150])
i_steps_pares_mean_test1 = mean(i_steps_pares[1:50])
i_steps_pares_mean_test2 = mean(i_steps_pares[51:100])
i_steps_pares_mean_test3 = mean(i_steps_pares[101:150])
b_steps_impares_mean_test1 = mean(b_steps_impares[1:50])
b_steps_impares_mean_test2 = mean(b_steps_impares[51:100])
b_steps_impares_mean_test3 = mean(b_steps_impares[101:150])
b_steps_pares_mean_test1 = mean(b_steps_pares[1:50])
b_steps_pares_mean_test2 = mean(b_steps_pares[51:100])
b_steps_pares_mean_test3 = mean(b_steps_pares[101:150])

#Standard Deviation
#Longest
q_longest_impares_standard_deviation_test1 = sd(q_longest_impares[1:50])
q_longest_impares_standard_deviation_test2 = sd(q_longest_impares[51:100])
q_longest_impares_standard_deviation_test3 = sd(q_longest_impares[101:150])
q_longest_pares_standard_deviation_test1 = sd(q_longest_pares[1:50])
q_longest_pares_standard_deviation_test2 = sd(q_longest_pares[51:100])
q_longest_pares_standard_deviation_test3 = sd(q_longest_pares[101:150])
m_longest_impares_standard_deviation_test1 = sd(m_longest_impares[1:50])
m_longest_impares_standard_deviation_test2 = sd(m_longest_impares[51:100])
m_longest_impares_standard_deviation_test3 = sd(m_longest_impares[101:150])
m_longest_pares_standard_deviation_test1 = sd(m_longest_pares[1:50])
m_longest_pares_standard_deviation_test2 = sd(m_longest_pares[51:100])
m_longest_pares_standard_deviation_test3 = sd(m_longest_pares[101:150])
i_longest_impares_standard_deviation_test1 = sd(i_longest_impares[1:50])
i_longest_impares_standard_deviation_test2 = sd(i_longest_impares[51:100])
i_longest_impares_standard_deviation_test3 = sd(i_longest_impares[101:150])
i_longest_pares_standard_deviation_test1 = sd(i_longest_pares[1:50])
i_longest_pares_standard_deviation_test2 = sd(i_longest_pares[51:100])
i_longest_pares_standard_deviation_test3 = sd(i_longest_pares[101:150])
b_longest_impares_standard_deviation_test1 = sd(b_longest_impares[1:50])
b_longest_impares_standard_deviation_test2 = sd(b_longest_impares[51:100])
b_longest_impares_standard_deviation_test3 = sd(b_longest_impares[101:150])
b_longest_pares_standard_deviation_test1 = sd(b_longest_pares[1:50])
b_longest_pares_standard_deviation_test2 = sd(b_longest_pares[51:100])
b_longest_pares_standard_deviation_test3 = sd(b_longest_pares[101:150])

#Steps
q_steps_impares_standard_deviation_test1 = sd(q_steps_impares[1:50])
q_steps_impares_standard_deviation_test2 = sd(q_steps_impares[51:100])
q_steps_impares_standard_deviation_test3 = sd(q_steps_impares[101:150])
q_longest_pares_standard_deviation_test1 = sd(q_longest_pares[1:50])
q_longest_pares_standard_deviation_test2 = sd(q_longest_pares[51:100])
q_longest_pares_standard_deviation_test3 = sd(q_longest_pares[101:150])
m_steps_impares_standard_deviation_test1 = sd(m_steps_impares[1:50])
m_steps_impares_standard_deviation_test2 = sd(m_steps_impares[51:100])
m_steps_impares_standard_deviation_test3 = sd(m_steps_impares[101:150])
m_steps_pares_standard_deviation_test1 = sd(m_steps_pares[1:50])
m_steps_pares_standard_deviation_test2 = sd(m_steps_pares[51:100])
m_steps_pares_standard_deviation_test3 = sd(m_steps_pares[101:150])
i_steps_impares_standard_deviation_test1 = sd(i_steps_impares[1:50])
i_steps_impares_standard_deviation_test2 = sd(i_steps_impares[51:100])
i_steps_impares_standard_deviation_test3 = sd(i_steps_impares[101:150])
i_steps_pares_standard_deviation_test1 = sd(i_steps_pares[1:50])
i_steps_pares_standard_deviation_test2 = sd(i_steps_pares[51:100])
i_steps_pares_standard_deviation_test3 = sd(i_steps_pares[101:150])
b_steps_impares_standard_deviation_test1 = sd(b_steps_impares[1:50])
b_steps_impares_standard_deviation_test2 = sd(b_steps_impares[51:100])
b_steps_impares_standard_deviation_test3 = sd(b_steps_impares[101:150])
b_steps_pares_standard_deviation_test1 = sd(b_steps_pares[1:50])
b_steps_pares_standard_deviation_test2 = sd(b_steps_pares[51:100])
b_steps_pares_standard_deviation_test3 = sd(b_steps_pares[101:150])

#Linear Regression
x11()
plot(value_range_impares[1:50],q_steps_impares[1:50],col = "red",main = "Height & Weight Regression",cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
relation <- lm(q_steps_impares[1:50]~value_range_impares[1:50])
abline(relation,lwd=2)
summary(relation)

prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#GRAPHS
#Quick Sort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),q_longest_impares[1:50],main="QuickSort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
#Linear Regression
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(q_longest_impares[1:50]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),q_longest_pares[1:50],main="QuickSort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(q_longest_pares[1:50]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],q_longest_impares[51:100],main="QuickSort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_impares[51:100]
relation <- lm(q_longest_impares[51:100]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Quick Sort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],q_longest_pares[51:100],main="QuickSort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_pares[51:100]
relation <- lm(q_longest_pares[51:100]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],q_longest_impares[101:150],main="QuickSort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_impares[101:150]
relation <- lm(q_longest_impares[101:150]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],q_longest_pares[101:150],main="QuickSort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_pares[101:150]
relation <- lm(q_longest_pares[101:150]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),q_steps_impares[1:50],main="QuickSort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(q_steps_impares[1:50]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),q_steps_pares[1:50],main="QuickSort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(q_steps_pares[1:50]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],q_steps_impares[51:100],main="QuickSort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_impares[51:100]
relation <- lm(q_steps_impares[51:100]~number_to_m)
abline(relation,lwd=2)
summary(relation)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],q_steps_pares[51:100],main="QuickSort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_pares[51:100]
relation <- lm(q_steps_pares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],q_steps_impares[101:150],main="QuickSort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_impares[101:150]
relation <- lm(q_steps_impares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],q_steps_pares[101:150],main="QuickSort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_pares[101:150]
relation <- lm(q_steps_pares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Merge Sort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),m_longest_impares[1:50],main="Mergesort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(m_longest_impares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),m_longest_pares[1:50],main="Mergesort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(m_longest_pares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],m_longest_impares[51:100],main="Mergesort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_impares[51:100]
relation <- lm(m_longest_impares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],m_longest_pares[51:100],main="Mergesort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_pares[51:100]
relation <- lm(m_longest_pares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],m_longest_impares[101:150],main="Mergesort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_impares[101:150]
relation <- lm(m_longest_impares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],m_longest_pares[101:150],main="Mergesort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_pares[101:150]
relation <- lm(m_longest_pares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),m_steps_impares[1:50],main="Mergesort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(m_steps_impares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),m_steps_pares[1:50],main="Mergesort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(m_steps_pares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],m_steps_impares[51:100],main="Mergesort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_impares[51:100]
relation <- lm(m_steps_impares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],m_steps_pares[51:100],main="Mergesort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_pares[51:100]
relation <- lm(m_steps_pares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],m_steps_impares[101:150],main="Mergesort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_impares[101:150]
relation <- lm(m_steps_impares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],m_steps_pares[101:150],main="Mergesort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_pares[101:150]
relation <- lm(m_steps_pares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),i_longest_impares[1:50],main="Insertionsort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(i_longest_impares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),i_longest_pares[1:50],main="Insertionsort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(i_longest_pares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],i_longest_impares[51:100],main="Insertionsort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_impares[51:100]
relation <- lm(i_longest_impares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],i_longest_pares[51:100],main="Insertionsort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_pares[51:100]
relation <- lm(i_longest_pares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],i_longest_impares[101:150],main="Insertionsort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_impares[101:150]
relation <- lm(i_longest_impares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],i_longest_pares[101:150],main="Insertionsort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_pares[101:150]
relation <- lm(i_longest_pares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),i_steps_impares[1:50],main="Insertionsort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(i_steps_impares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),i_steps_pares[1:50],main="Insertionsort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(i_steps_pares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],i_steps_impares[51:100],main="Insertionsort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_impares[51:100]
relation <- lm(i_steps_impares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],i_steps_pares[51:100],main="Insertionsort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_pares[51:100]
relation <- lm(i_steps_pares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],i_steps_impares[101:150],main="Insertionsort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_impares[101:150]
relation <- lm(i_steps_impares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],i_steps_pares[101:150],main="Insertionsort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_pares[101:150]
relation <- lm(i_steps_pares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),b_longest_impares[1:50],main="Bubblesort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(b_longest_impares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),b_longest_pares[1:50],main="Bubblesort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Largest Subarray / Number of elements (%)")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(b_longest_pares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],b_longest_impares[51:100],main="Bubblesort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_impares[51:100]
relation <- lm(b_longest_impares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],b_longest_pares[51:100],main="Bubblesort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray / Number of elements (%)")
number_to_m = elements_pares[51:100]
relation <- lm(b_longest_pares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],b_longest_impares[101:150],main="Bubblesort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_impares[101:150]
relation <- lm(b_longest_impares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],b_longest_pares[101:150],main="Bubblesort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Largest Subarray / Number of elements (%)")
number_to_m = probability_pares[101:150]
relation <- lm(b_longest_pares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Value Range
x11()
plot((value_range_impares[1:50]*2500),b_steps_impares[1:50],main="Bubblesort Value Range - 1 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_impares[1:50]*2500)
relation <- lm(b_steps_impares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Value Range
x11()
plot((value_range_pares[1:50]*7500),b_steps_pares[1:50],main="Bubblesort Value Range - 2 case", col = "red",xlab = "Random Number Range", ylab="Number of swaps")
number_to_m = (value_range_pares[1:50]*7500)
relation <- lm(b_steps_pares[1:50]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[51:100],b_steps_impares[51:100],main="Bubblesort Number Elements - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_impares[51:100]
relation <- lm(b_steps_impares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[51:100],b_steps_pares[51:100],main="Bubblesort Number Elements - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of swaps")
number_to_m = elements_pares[51:100]
relation <- lm(b_steps_pares[51:100]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Number probability
x11()
plot(probability_impares[101:150],b_steps_impares[101:150],main="Bubblesort Error Probability - 1 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_impares[101:150]
relation <- lm(b_steps_impares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Number probability
x11()
plot(probability_pares[101:150],b_steps_pares[101:150],main="Bubblesort Error Probability - 2 case", col = "red",xlab = "Error Probability", ylab="Number of swaps")
number_to_m = probability_pares[101:150]
relation <- lm(b_steps_pares[101:150]~number_to_m)
abline(relation,lwd=2)
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)