library(tcltk)
condition_array = readLines("out/size.txt");
condition_array = strtoi(condition_array)


quicksort_longest = readLines("out/longest_arr - quicksort.txt");
bubblesort_longest = readLines("out/longest_arr - bubblesort.txt");
mergesort_longest = readLines("out/longest_arr - mergesort.txt");
insertionsort_longest = readLines("out/longest_arr - insertionsort.txt");

quicksort_steps = readLines("out/steps - quicksort.txt");
bubblesort_steps = readLines("out/steps - bubblesort.txt");
mergesort_steps = readLines("out/steps - mergesort.txt");
insertionsort_steps = readLines("out/steps - insertionsort.txt");

q_longest = seq(1, 300, by=1)
b_longest = seq(1, 300, by=1)
m_longest = seq(1, 300, by=1)
i_longest = seq(1, 300, by=1)

q_longest_pares = seq(1,13,by=1)
b_longest_pares = seq(1,13,by=1)
m_longest_pares = seq(1,13,by=1)
i_longest_pares = seq(1,13,by=1)

q_longest_impares = seq(1,13,by=1)
b_longest_impares = seq(1,13,by=1)
m_longest_impares = seq(1,13,by=1)
i_longest_impares = seq(1,13,by=1)

q_steps = seq(1, 300, by=1)
b_steps = seq(1, 300, by=1)
m_steps = seq(1, 300, by=1)
i_steps = seq(1, 300, by=1)

q_steps_pares = seq(1,13,by=1)
b_steps_pares = seq(1,13,by=1)
m_steps_pares = seq(1,13,by=1)
i_steps_pares = seq(1,13,by=1)

q_steps_impares = seq(1,13,by=1)
b_steps_impares = seq(1,13,by=1)
m_steps_impares = seq(1,13,by=1)
i_steps_impares = seq(1,13,by=1)

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
max = 26
step = 2
for(i in seq(min, max, by = step)){
    q_longest_impares[count] <- mean(q_longest[i])
    
    b_longest_impares[count] <- mean(b_longest[i])

    m_longest_impares[count] <- mean(m_longest[i])

    i_longest_impares[count] <- mean(i_longest[i])

    count = count + 1
}

count = 1
min = 2
max = 26
step = 2
for(i in seq(min, max, by = step)){
    q_longest_pares[count] <- mean(q_longest[i])
    
    b_longest_pares[count] <- mean(b_longest[i])

    m_longest_pares[count] <- mean(m_longest[i])

    i_longest_pares[count] <- mean(i_longest[i])

    count = count + 1
}

count = 1
min = 1
max = 26
step = 2
for(i in seq(min, max, by = step)){
    q_steps_impares[count] <- mean(q_steps[i])
    
    b_steps_impares[count] <- mean(b_steps[i])

    m_steps_impares[count] <- mean(m_steps[i])

    i_steps_impares[count] <- mean(i_steps[i])

    count = count + 1
}

count = 1
min = 2
max = 26
step = 2
for(i in seq(min, max, by = step)){
    q_steps_pares[count] <- mean(q_steps[i])
    
    b_steps_pares[count] <- mean(b_steps[i])

    m_steps_pares[count] <- mean(m_steps[i])

    i_steps_pares[count] <- mean(i_steps[i])

    count = count + 1
}
#Quick Sort Testes Ímpares Graph
x11()
plot(q_longest_impares,main="QuickSort Ímpares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Testes Pares Graph
x11()
plot(q_longest_pares,main="QuickSort Pares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Quick Sort Steps Testes Ímpares Graph
x11()
plot(q_steps_impares,main="QuickSort Steps Ímpares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Quick Sort Steps Testes Pares Graph
x11()
plot(q_steps_pares,main="QuickSort Steps Pares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Buble Sort Testes Ímpares Graph
x11()
plot(b_longest_impares,main="Bublesort Ímpares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Buble Sort Testes Pares Graph
x11()
plot(b_longest_pares,main="Bublesort Pares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Buble Sort Steps Testes Ímpares Graph
x11()
plot(b_steps_impares,main="Bublesort Steps Ímpares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Buble Sort Steps Testes Pares Graph
x11()
plot(b_steps_pares,main="Bublesort Steps Pares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Merge Sort Testes Ímpares Graph
x11()
plot(m_longest_impares,main="Mergesort Ímpares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Merge Sort Testes Pares Graph
x11()
plot(m_longest_pares,main="Mergesort Pares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Merge Sort Steps Testes Ímpares Graph
x11()
plot(m_steps_impares,main="Mergesort Steps Ímpares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Merge Sort Steps Graph
x11()
plot(m_steps_pares,main="Mergesort Steps Pares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Insertion Sort Testes Ímpares Graph
x11()
plot(i_longest_impares,main="Insertion Sort Ímpares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertion Sort Testes Pares Graph
x11()
plot(i_longest_pares,main="Insertion Sort Pares", col = "red",xlab = "Test number", ylab="Average Time")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)


#Insertion Sort Steps Testes Ímpares Graph
x11()
plot(i_steps_impares,main="Insertion Sort Steps Ímpares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

#Insertion Sort Steps Graph
x11()
plot(i_steps_pares,main="Insertion Sort Steps Pares", col = "red",xlab = "Test number", ylab="Steps")
prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)
