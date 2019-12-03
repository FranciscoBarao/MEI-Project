library(tcltk)

# Values
algorithms = 4
vr_tests = 3
maintests = 20
subtests = 5
loops = 1
repetitions = 5
yMaxLim = 260000
yMaxLim2 = 100

tests = vr_tests * maintests * subtests * loops

colors <- c("black", "blue", "brown", "chartreuse", "darkgray", "darkmagenta", "darkolivegreen", "chocolate", "darkgoldenrod", "deeppink")

value_range = readLines("out/value_range.txt");
value_range = as.numeric(value_range)

probability = readLines("out/probability.txt");
probability = as.numeric(probability)

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

quicksort_steps = readLines("out/steps - quicksort.txt");
quicksort_steps = as.numeric(quicksort_steps)
bubblesort_steps = readLines("out/steps - bubblesort.txt");
bubblesort_steps = as.numeric(bubblesort_steps)
mergesort_steps = readLines("out/steps - mergesort.txt");
mergesort_steps = as.numeric(mergesort_steps)
insertionsort_steps = readLines("out/steps - insertionsort.txt");
insertionsort_steps = as.numeric(insertionsort_steps)

q_longest = seq(1, tests, by=1)
b_longest = seq(1, tests, by=1)
m_longest = seq(1, tests, by=1)
i_longest = seq(1, tests, by=1)

q_steps = seq(1, tests, by=1)
b_steps = seq(1, tests, by=1)
m_steps = seq(1, tests, by=1)
i_steps = seq(1, tests, by=1)

count = 1
index = 1
for(loop in seq(1, loops)){
    for (vr in seq(1, vr_tests)){
        for(i in seq(1, subtests)){
            for(j in seq(1, maintests*repetitions, by = repetitions)){
                q_longest[count] = (mean(quicksort_longest[index : (index + repetitions-1)])/elements[count])*100
                b_longest[count] = (mean(bubblesort_longest[index : (index + repetitions-1)])/elements[count])*100
                m_longest[count] = (mean(mergesort_longest[index : (index + repetitions-1)])/elements[count])*100
                i_longest[count] = (mean(insertionsort_longest[index : (index + repetitions-1)])/elements[count])*100
            
                q_steps[count] = mean(quicksort_steps[index : (index + repetitions-1)])
                b_steps[count] = mean(bubblesort_steps[index : (index + repetitions-1)])
                m_steps[count] = mean(mergesort_steps[index : (index + repetitions-1)])
                i_steps[count] = mean(insertionsort_steps[index : (index + repetitions-1)])

                index = index + repetitions
                count = count + 1
            }
        }
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim2), main=paste("QuickSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*1
        points(elements[variable:(variable+maintests-1)], q_longest[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim2), main=paste("BubbleSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*2
        points(elements[variable:(variable+maintests-1)], b_longest[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim2), main=paste("MergeSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*3
        points(elements[variable:(variable+maintests-1)], m_longest[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim2), main=paste("InsertionSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Largest Subarray / Number of elements (%)")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*4
        points(elements[variable:(variable+maintests-1)], i_longest[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim), main=paste("QuickSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Number of swaps")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*1
        points(elements[variable:(variable+maintests-1)], q_steps[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim), main=paste("BubbleSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Number of swaps")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*2
        points(elements[variable:(variable+maintests-1)], b_steps[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim), main=paste("MergeSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Number of swaps")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*3
        points(elements[variable:(variable+maintests-1)], m_steps[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

index = 1
for(test in seq(1, vr_tests)){
    x11()
    plot(NULL, xlim=c(0,10000), ylim=c(0,yMaxLim), main=paste("InsertionSort - Value Range", test, sep=" "), xlab = "Number of elements", ylab="Number of swaps")
    color = 0
    for(i in seq(1, maintests*subtests, by=maintests)){
        variable = i*4
        points(elements[variable:(variable+maintests-1)], i_steps[index:(index+maintests-1)], col=colors[color])
        index = index + maintests
        color = color + 1
    }
}

print(q_steps)
write("Algorithm ProbError nSteps Longest", file = "data.out", append = FALSE)
prob_index = 1
index = 1
for(value in seq(1, vr_tests)){
    for(i in seq(1, subtests)){
        for(j in seq(1, maintests)){
            write(paste("Quicksort", probability[prob_index], q_steps[index], q_longest[index], sep=" "), file = "data.out", append = TRUE)
            index = index + 1
        }
        prob_index = prob_index + 20
    }
}
prob_index = 1
index = 1
for(value in seq(1, vr_tests)){
    for(i in seq(1, subtests)){
        for(j in seq(1, maintests)){
            write(paste("Bubblesort", probability[prob_index], b_steps[index], b_longest[index], sep=" "), file = "data.out", append = TRUE)
            index = index + 1
        }
        prob_index = prob_index + 20
    }
}
prob_index = 1
index = 1
for(value in seq(1, vr_tests)){
    for(i in seq(1, subtests)){
        for(j in seq(1, maintests)){
            write(paste("Mergesort", probability[prob_index], m_steps[index], m_longest[index], sep=" "), file = "data.out", append = TRUE)
            index = index + 1
        }
        prob_index = prob_index + 20
    }
}
prob_index = 1
index = 1
for(value in seq(1, vr_tests)){
    for(i in seq(1, subtests)){
        for(j in seq(1, maintests)){
            write(paste("Insertionsort", probability[prob_index], i_steps[index], i_longest[index], sep=" "), file = "data.out", append = TRUE)
            index = index + 1
        }
        prob_index = prob_index + 20
    }
}

prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)