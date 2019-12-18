
# This file is used to generate values and create datav2.out tables
# With number of elements = 50 | error prob = 0.021 | value range = 0.5

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

new_elements = seq(1,250)
b_longest = seq(1,50)
i_longest = seq(1,50)
q_longest = seq(1,50)
m_longest = seq(1,50)

indexMin = 1501
indexMax = 1750
b_steps = bubblesort_steps[indexMin : indexMax ]
i_steps = insertionsort_steps[indexMin : indexMax ]
q_steps = quicksort_steps[indexMin : indexMax ]
m_steps = mergesort_steps[indexMin : indexMax ]


count = 1
for(i in seq(1, 50)){
    for(j in seq(0, 4)){
        new_elements[count+j] = elements[1350+i]
    }
    count = count + 5
}

indexTemp = indexMin
for(i in seq(0, 249)){
    b_longest[i+1] = (bubblesort_longest[indexTemp+i] / new_elements[i+1])*100
    i_longest[i+1] = (insertionsort_longest[indexTemp+i] / new_elements[i+1])*100
    q_longest[i+1] = (quicksort_longest[indexTemp+i] / new_elements[i+1])*100
    m_longest[i+1] = (mergesort_longest[indexTemp+i] / new_elements[i+1])*100
}


y_lim_steps = 25000000
y_lim_longest = 25
plot(new_elements, b_steps, ylim=c(0,y_lim_steps), main=paste("Bubblesort Swaps"), xlab = "Number of elements", ylab="Number of swaps")
plot(new_elements, i_steps, ylim=c(0,y_lim_steps), main=paste("Insertionsort Swaps"), xlab = "Number of elements", ylab="Number of swaps")
plot(new_elements, b_steps, ylim=c(0,y_lim_steps), main=paste("Quicksort Swaps"), xlab = "Number of elements", ylab="Number of swaps")
plot(new_elements, i_steps, ylim=c(0,y_lim_steps), main=paste("Mergesort Swaps"), xlab = "Number of elements", ylab="Number of swaps")

plot(new_elements, b_longest, ylim=c(0,y_lim_longest), main=paste("Bubblesort Longest"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
plot(new_elements, i_longest, ylim=c(0,y_lim_longest), main=paste("Insertionsort Longest"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
plot(new_elements, b_longest, ylim=c(0,y_lim_longest), main=paste("Quicksort Longest"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
plot(new_elements, i_longest, ylim=c(0,y_lim_longest), main=paste("Mergesort Longest"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")

plot(new_elements, b_steps, main=paste("Bubblesort Swaps - No scale"), xlab = "Number of elements", ylab="Number of swaps")
plot(new_elements, b_steps, main=paste("Quicksort Swaps - No scale"), xlab = "Number of elements", ylab="Number of swaps")

plot(new_elements, i_longest, main=paste("Insertionsort Longest - No scale"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
plot(new_elements, i_longest, main=paste("Mergesort Longest - No scale"), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")





write("Algorithm SizeN nSteps Longest", file = "data_v2.out", append = FALSE)
indexMin = 1
elem_index = 1
maintests = 250
for(j in seq(0, maintests-1)){
    write(paste("Quicksort", new_elements[elem_index+j], q_steps[indexMin+j], q_longest[indexMin+j], sep=" "), file = "data_v2.out", append = TRUE)
}

for(j in seq(0, maintests-1)){
    write(paste("Bubblesort", new_elements[elem_index+j], b_steps[indexMin+j], b_longest[indexMin+j], sep=" "), file = "data_v2.out", append = TRUE)
}

for(j in seq(1, maintests)){
    write(paste("Mergesort", new_elements[elem_index+j], m_steps[indexMin+j], m_longest[indexMin+j], sep=" "), file = "data_v2.out", append = TRUE)

}

for(j in seq(1, maintests)){
    write(paste("Insertionsort", new_elements[elem_index+j], i_steps[indexMin+j], i_longest[indexMin+j], sep=" "), file = "data_v2.out", append = TRUE)
}



