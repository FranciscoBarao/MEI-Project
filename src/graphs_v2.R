library(tcltk)

# Values
algorithms = 4
value_range = 3
maintests = 50
subtests = 10
loops = 2
repetitions = 5

tests = value_range * maintests * subtests * loops

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

q_longest = seq(1, tests, by=1)
b_longest = seq(1, tests, by=1)
m_longest = seq(1, tests, by=1)
i_longest = seq(1, tests, by=1)

q_steps = seq(1, tests, by=1)
b_steps = seq(1, tests, by=1)
m_steps = seq(1, tests, by=1)
i_steps = seq(1, tests, by=1)

count = 1
for(loop in seq(1, loops)){
    for (vr in seq(1, value_range)){
        for(i in seq(1, subtests)){
            for(j in seq(1, maintests*repetitions, by = repetitions)){
                q_longest[count] = mean(strtoi(quicksort_longest([i : (i + repetitions-1)])))
                b_longest[count] = mean(strtoi(bubblesort_longest([i : (i + repetitions-1)])))
                m_longest[count] = mean(strtoi(mergesort_longest([i : (i + repetitions-1)])))
                i_longest[count] = mean(strtoi(insertionsort_longest([i : (i + repetitions-1)])))

                q_steps[count] = mean(strtoi(quicksort_steps([i : (i + repetitions-1)])))
                b_steps[count] = mean(strtoi(bubblesort_steps([i : (i + repetitions-1)])))
                m_steps[count] = mean(strtoi(mergesort_steps([i : (i + repetitions-1)])))
                i_steps[count] = mean(strtoi(insertionsort_steps([i : (i + repetitions-1)])))

                count = count + 1
            }
        }
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "QuickSort - Value Range "+str(test), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*1
        points(elements[variable:(variable+maintests-1)], q_longest[index:(index+maintests-1)], col="green")
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "BubbleSort - Value Range "+str(test), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*2
        points(elements[index:(index+maintests-1)], b_longest[index:(index+maintests-1)], col="green")
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "MergeSort - Value Range "+str(test), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*3
        points(elements[index:(index+maintests-1)], q_longest[index:(index+maintests-1)], col="green")
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "InsertionSort - Value Range "+str(test), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*4
        points(elements[index:(index+maintests-1)], i_longest[index:(index+maintests-1)], col="green")
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "QuickSort - Value Range "+str(test), xlab = "Probability of error", ylab="Number of swaps")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*1
        points(probability[index:(index+maintests-1)], q_steps[index:(index+maintests-1)], col="green")
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "BubbleSort - Value Range "+str(test), xlab = "Probability of error", ylab="Number of swaps")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*2
        points(probability[index:(index+maintests-1)], b_steps[index:(index+maintests-1)], col="green")
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "MergeSort - Value Range "+str(test), xlab = "Probability of error", ylab="Number of swaps")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*3
        points(probability[index:(index+maintests-1)], m_steps[index:(index+maintests-1)], col="green")
    }
}

for(test in seq(1, value_range)){
    x11()
    plot(main= "InsertionSorte - Value Range "+str(test), xlab = "Probability of error", ylab="Number of swaps")
    for(i in seq(1, maintests*subtests, by=maintests)){
        index = i*test
        variable = i*test*4
        points(probability[index:(index+maintests-1)], i_steps[index:(index+maintests-1)], col="green")
    }
}