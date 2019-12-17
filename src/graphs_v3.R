
elements = readLines("out/elements.txt");
elements = as.numeric(elements)

bubblesort_steps = readLines("out/steps - bubblesort.txt");
bubblesort_steps = as.numeric(bubblesort_steps)

insertionsort_steps = readLines("out/steps - insertionsort.txt");
insertionsort_steps = as.numeric(insertionsort_steps)


b_steps = seq(1, 50, by=1)
i_steps = seq(1, 50, by=1)

count=1
index = 1501
for(i in seq(1, 50)){
    b_steps[count] = mean(bubblesort_steps[index : (index + 4)])
    i_steps[count] = mean(insertionsort_steps[index : (index + 4)])

    index = index + 5
    count = count + 1
}

plot(elements[1351:1400], b_steps[1:50], main=paste("bubblesort Swaps"), xlab = "Number of elements", ylab="Number of swaps")
plot(elements[1351:1400], i_steps[1:50], main=paste("insertionsort Swaps"), xlab = "Number of elements", ylab="Number of swaps")


