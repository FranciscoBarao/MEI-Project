library(tcltk)
condition_array = readLines("out/size.txt");


quicksort_longest = readLines("out/longest_arr - quicksort.txt");
bubblesort_longest = readLines("out/longest_arr - bubblesort.txt");
mergesort_longest = readLines("out/longest_arr - mergesort.txt");
insertionsort_longest = readLines("out/longest_arr - insertionsort.txt");

quicksort_steps = readLines("out/steps - quicksort.txt");
bubblesort_steps = readLines("out/steps - bubblesort.txt");
mergesort_steps = readLines("out/steps - mergesort.txt");
insertionsort_steps = readLines("out/steps - insertionsort.txt");

q_longest = seq(1, 26, by=1)
b_longest = seq(1, 26, by=1)
m_longest = seq(1, 26, by=1)
i_longest = seq(1, 26, by=1)


q_steps = seq(1, 26, by=1)
b_steps = seq(1, 26, by=1)
m_steps = seq(1, 26, by=1)
i_steps = seq(1, 26, by=1)


count = 0
for(i in 1:5:130){
    arr <- c(quicksort_longest[i],quicksort_longest[i+1],quicksort_longest[i+2],quicksort_longest[i+3],quicksort_longest[i+4])
    print("arrrrrrrrrrrrrrrrr")
    print(arr)
    print("mean arr")
    result.mean <-  mean(arr,na.rm = TRUE)
    print(result.mean)
    q_longest[count] = mean(arr)

    
    arr = quicksort_steps[i : i+4]
    q_steps[count] = mean(arr)
    

    arr = bubblesort_longest[i : i+4]
    b_longest[count] = mean(arr)

    arr = bubblesort_steps[i : i+4]
    b_steps[count] = mean(arr)


    arr = mergesort_longest[i : i+4]
    m_longest[count] = mean(arr)

    arr = mergesort_steps[i : i+4]
    m_steps[count] = mean(arr)


    arr = insertionsort_longest[i : i+4]
    i_longest[count] = mean(arr)

    arr = insertionsort_steps[i : i+4]
    i_steps[count] = mean(arr)
}

print("OOOOOF")
print(q_longest)


var_range_2500_0.01 = q_longest[1:2:8]
var_range_7500_0.0033 = q_longest[2:2:8]

number_elements_0.25_0.01 = q_longest[9:2:18]
number_elements_0.75_0.0033 = q_longest[10:2:18]

number_probability_2500_0.25 = q_longest[19:2:26]
number_probability_7500_0.75 = q_longest[20:2:26]

#X11()
#plot(var_range_2500_0.01)
#prompt  <- "hit spacebar to close plots"
#extra   <- "some extra comment"
#capture <- tk_messageBox(type = c("ok"),message = prompt, detail = extra)

print("Var_range_2500_0.01")
print(var_range_2500_0.01)

print("Var_range_7500_0.0033")
print(var_range_7500_0.0033)

print(number_probability_2500_0.25)

#Criar Graphs Quicksort aqui

var_range_2500_0.01 = b_longest[1:2:8]
var_range_7500_0.0033 = b_longest[2:2:8]

number_elements_0.25_0.01 = b_longest[9:2:18]
number_elements_0.75_0.0033 = b_longest[10:2:18]

number_probability_2500_0.25 = b_longest[19:2:26]
number_probability_7500_0.75 = b_longest[20:2:26]

#Criar Graphs Bubblesort aqui

var_range_2500_0.01 = m_longest[1:2:8]
var_range_7500_0.0033 = m_longest[2:2:8]

number_elements_0.25_0.01 = m_longest[9:2:18]
number_elements_0.75_0.0033 = m_longest[10:2:18]

number_probability_2500_0.25 = m_longest[19:2:26]
number_probability_7500_0.75 = m_longest[20:2:26]

#Criar Graphs MergeSort aqui

var_range_2500_0.01 = i_longest[1:2:8]
var_range_7500_0.0033 = i_longest[2:2:8]

number_elements_0.25_0.01 = i_longest[9:2:18]
number_elements_0.75_0.0033 = i_longest[10:2:18]

number_probability_2500_0.25 = i_longest[19:2:26]
number_probability_7500_0.75 = i_longest[20:2:26]


## STEPS

var_range_2500_0.01 = q_steps[1:2:8]
var_range_7500_0.0033 = q_steps[2:2:8]

number_elements_0.25_0.01 = q_steps[9:2:18]
number_elements_0.75_0.0033 = q_steps[10:2:18]

number_probability_2500_0.25 = q_steps[19:2:26]
number_probability_7500_0.75 = q_steps[20:2:26]

#Criar Graphs Quicksort aqui

var_range_2500_0.01 = b_steps[1:2:8]
var_range_7500_0.0033 = b_steps[2:2:8]

number_elements_0.25_0.01 = b_steps[9:2:18]
number_elements_0.75_0.0033 = b_steps[10:2:18]

number_probability_2500_0.25 = b_steps[19:2:26]
number_probability_7500_0.75 = b_steps[20:2:26]

#Criar Graphs Bubblesort aqui

var_range_2500_0.01 = m_steps[1:2:8]
var_range_7500_0.0033 = m_steps[2:2:8]

number_elements_0.25_0.01 = m_steps[9:2:18]
number_elements_0.75_0.0033 = m_steps[10:2:18]

number_probability_2500_0.25 = m_steps[19:2:26]
number_probability_7500_0.75 = m_steps[20:2:26]

#Criar Graphs MergeSort aqui

var_range_2500_0.01 = i_steps[1:2:8]
var_range_7500_0.0033 = i_steps[2:2:8]

number_elements_0.25_0.01 = i_steps[9:2:18]
number_elements_0.75_0.0033 = i_steps[10:2:18]

number_probability_2500_0.25 = i_steps[19:2:26]
number_probability_7500_0.75 = i_steps[20:2:26]

#Criar Graphs InsertionSort aqui





# Testar Intervalos de valores em vez de fixos ou seja 
# [0.25, 0.5, 0.75] passa a [0.1 : 0.0025 : 0.9] maybe?
# [1000, 2500, 5000, 7500,10000] passa a [200 : 200 : 10000]
# [0.04, 0.01, 0.0033, 0.002] passa a ..
#
#
#
# Graficos a fazer Scatter Plot :
#   Todos os var Ranges sendo as 2 condições cores diferentes para se ver bem
#   Todos number probability sendo 2 condições cores diferentes para se ver bem
#
#
#
# Graficos a fazer Histogram  :
# Todos number elements
#  
