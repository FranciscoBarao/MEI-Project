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

value_range_pares = seq(1,50,by=1);
value_range_impares = seq(1,50,by=1);

elements_pares = seq(1,50,by=1);
elements_impares = seq(1,50,by=1);

probability_pares = seq(1,50,by=1);
probability_impares = seq(1,50,by=1);

q_longest = seq(1, 100, by=1)
b_longest = seq(1, 100, by=1)
m_longest = seq(1, 100, by=1)
i_longest = seq(1, 100, by=1)

q_longest_pares = seq(1,50,by=1)
b_longest_pares = seq(1,50,by=1)
m_longest_pares = seq(1,50,by=1)
i_longest_pares = seq(1,50,by=1)

q_longest_impares = seq(1,50,by=1)
b_longest_impares = seq(1,50,by=1)
m_longest_impares = seq(1,50,by=1)
i_longest_impares = seq(1,50,by=1)

q_steps = seq(1, 100, by=1)
b_steps = seq(1, 100, by=1)
m_steps = seq(1, 100, by=1)
i_steps = seq(1, 100, by=1)

q_steps_pares = seq(1,50,by=1)
b_steps_pares = seq(1,50,by=1)
m_steps_pares = seq(1,50,by=1)
i_steps_pares = seq(1,50,by=1)

q_steps_impares = seq(1,50,by=1)
b_steps_impares = seq(1,50,by=1)
m_steps_impares = seq(1,50,by=1)
i_steps_impares = seq(1,50,by=1)

count = 1
min = 1
max = 500
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
max = 100
step = 2
for(i in seq(min, max, by = step)){
    q_longest_impares[count] <- mean(q_longest[i])

    q_longest_pares[count] <- mean(q_longest[i+1])

    b_longest_impares[count] <- mean(b_longest[i])

    b_longest_pares[count] <- mean(b_longest[i+1])

    m_longest_impares[count] <- mean(m_longest[i])

    m_longest_pares[count] <- mean(m_longest[i+1])

    i_longest_impares[count] <- mean(i_longest[i])

    i_longest_pares[count] <- mean(i_longest[i+1])

    count = count + 1
}

count = 1
min = 1
max = 100
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
max = 100
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

#Quick Sort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],q_longest_impares[1:51],main="QuickSort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Quick Sort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],q_longest_pares[1:51],main="QuickSort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Quick Sort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],q_steps_impares[1:51],main="QuickSort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],q_steps_pares[1:51],main="QuickSort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],m_longest_impares[1:51],main="Mergesort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],m_longest_pares[1:51],main="Mergesort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],m_steps_impares[1:51],main="Mergesort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Mergesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],m_steps_pares[1:51],main="Mergesort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],i_longest_impares[1:51],main="Insertionsort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],i_longest_pares[1:51],main="Insertionsort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],i_steps_impares[1:51],main="Insertionsort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertionsort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],i_steps_pares[1:51],main="Insertionsort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],b_longest_impares[1:51],main="Bubblesort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],b_longest_pares[1:51],main="Bubblesort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Largest Subarray")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Ímpares Graph - Number elements
x11()
plot(elements_impares[1:51],b_steps_impares[1:51],main="Bubblesort Number Elements Test - 1 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Bubblesort Testes Pares Graph - Number elements
x11()
plot(elements_pares[1:51],b_steps_pares[1:51],main="Bubblesort Number Elements Test - 2 case", col = "red",xlab = "Number of Elements", ylab="Number of steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)
