
elements = readLines("out/elements.txt");
elements = as.numeric(elements)



quicksort_longest = readLines("out/longest_arr - quicksort.txt");
quicksort_longest = as.numeric(quicksort_longest)
bubblesort_longest = readLines("out/longest_arr - bubblesort.txt");
bubblesort_longest = as.numeric(bubblesort_longest)
mergesort_longest = readLines("out/longest_arr - mergesort.txt");
mergesort_longest = as.numeric(mergesort_longest)
insertionsort_longest = readLines("out/longest_arr - insertionsort.txt");
insertionsort_longest = as.numeric(insertionsort_longest)

bubblesort_steps = readLines("out/steps - bubblesort.txt");
bubblesort_steps = as.numeric(bubblesort_steps)
insertionsort_steps = readLines("out/steps - insertionsort.txt");
insertionsort_steps = as.numeric(insertionsort_steps)
quicksort_steps = readLines("out/steps - quicksort.txt");
quicksort_steps = as.numeric(quicksort_steps)
mergesort_steps = readLines("out/steps - mergesort.txt");
mergesort_steps = as.numeric(mergesort_steps)


b_steps = seq(1, 50, by=1)
i_steps = seq(1, 50, by=1)
q_steps = seq(1, 50, by=1)
m_steps = seq(1, 50, by=1)

q_longest = seq(1, 50, by=1)
b_longest = seq(1, 50, by=1)
m_longest = seq(1, 50, by=1)
i_longest = seq(1, 50, by=1)

count=1
index = 1501
for(i in seq(1, 50)){
    b_steps[count] = mean(bubblesort_steps[index : (index + 4)])
    i_steps[count] = mean(insertionsort_steps[index : (index + 4)])
    q_steps[count] = mean(quicksort_steps[index : (index + 4)])
    m_steps[count] = mean(mergesort_steps[index : (index + 4)])

    b_longest[count] = (mean(bubblesort_longest[index : (index + 4)]) / elements[1350+count])*100
    i_longest[count] = (mean(insertionsort_longest[index : (index + 4)]) / elements[1350+count])*100
    q_longest[count] = (mean(quicksort_longest[index : (index + 4)]) / elements[1350+count])*100
    m_longest[count] = (mean(mergesort_longest[index : (index + 4)]) / elements[1350+count])*100

    index = index + 5
    count = count + 1
}

plot(elements[1351:1400], b_steps[1:50], main=paste("Bubblesort Swaps"), xlab = "Number of elements", ylab="Number of swaps")
plot(elements[1351:1400], i_steps[1:50], main=paste("Insertionsort Swaps"), xlab = "Number of elements", ylab="Number of swaps")
plot(elements[1351:1400], b_steps[1:50], main=paste("Quicksort Swaps"), xlab = "Number of elements", ylab="Number of swaps")
plot(elements[1351:1400], i_steps[1:50], main=paste("Mergesort Swaps"), xlab = "Number of elements", ylab="Number of swaps")

plot(elements[1351:1400], b_longest[1:50], main=paste("Bubblesort Swaps"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
plot(elements[1351:1400], i_longest[1:50], main=paste("Insertionsort Swaps"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
plot(elements[1351:1400], b_longest[1:50], main=paste("Quicksort Swaps"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
plot(elements[1351:1400], i_longest[1:50], main=paste("Mergesort Swaps"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")


write("Algorithm SizeN nSteps Longest", file = "data_v2.out", append = FALSE)
index = 1
elem_index = 1351
maintests = 50
for(j in seq(1, maintests)){
    write(paste("Quicksort", elements[elem_index], q_steps[index], q_longest[index], sep=" "), file = "data_v2.out", append = TRUE)
    index = index + 1
    elem_index = elem_index + 1
}

index = 1
elem_index = 1351
for(j in seq(1, maintests)){
    write(paste("Bubblesort", elements[elem_index], b_steps[index], b_longest[index], sep=" "), file = "data_v2.out", append = TRUE)
    index = index + 1
    elem_index = elem_index + 1
}

index = 1
elem_index = 1351
for(j in seq(1, maintests)){
    write(paste("Mergesort", elements[elem_index], m_steps[index], m_longest[index], sep=" "), file = "data_v2.out", append = TRUE)
    index = index + 1
    elem_index = elem_index + 1
}

index = 1
elem_index = 1351
for(j in seq(1, maintests)){
    write(paste("Insertionsort", elements[elem_index], i_steps[index], i_longest[index], sep=" "), file = "data_v2.out", append = TRUE)
    index = index + 1
    elem_index = elem_index + 1
}



