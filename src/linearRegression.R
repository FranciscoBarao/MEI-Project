# Probability = x
# Algorithm = y
#  number_elements       Longest Subarray    
#       1                      1234               
#       2                      4124               
#       3                      5123               

min_number_elements = 500
max_number_elements = 10000

#Reciprocal example
D = read.table("...",header=TRUE)
#Sem transformação
#lr.out = lm(D$number~D$year)
#Com transformação
lr.out = lm(1/D$time~D$processors)
summary(lr.out)

#valor de r -> 

#intercept estimate -> x (a)
#d&year estimate -> y    (b)
y = 1/(a + b*x)
plot(D$year,y)
points(D$year, D$number, col="red")

# Pedro is mean
curve(1/(a + b*x),min_number_elements,max_number_elements) 

