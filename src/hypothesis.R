# Algorithm | Prob error | nSteps/Longest
# Quicksort      0.04          x
# Quicksort      0.05          y
# Quicksort      0.002         z
# Bubblesort     0.04          x

#Two Way Anova
#Independent variables - Probability of error && Algorithm 
T = read.table(file = "data.out",header = TRUE)
T$ProbError = as.factor(T$ProbError)
#Number of Stes
boxplot(T$nSteps~T$Algorithm, data = T)
boxplot(T$nSteps~T$ProbError, data = T)
interaction.plot(T$Algorithm, T$ProbError, T$nSteps)

#Longest of Subarray
boxplot(T$Longest~T$Algorithm, data = T)
boxplot(T$Longest~T$ProbError, data = T)
interaction.plot(T$Algorithm, T$ProbError, T$Longest)

#Anova Table - Number of steps
nSteps.aov.out = aov(T$nSteps~T$Algorithm*T$ProbError, data = T)
summary(nSteps.aov.out)

#Anova Table - Longest subarray
longest.aov.out = aov(T$Longest~T$Algorithm*T$ProbError, data = T)
summary(longest.aov.out)


#Reject HoAB -> Check Assumptions - Number of Steps 
#Normality of residuals 
qqnorm(nSteps.aov.out$res)
qqline(nSteps.aov.out$res)

shapiro.test(nSteps.aov.out$res)
#We assume normality if w is big

#Test Homogeneity of Variances
bartlett.test(T$nSteps~T$Algorithm)
bartlett.test(T$nSteps~T$ProbError)
bartlett.test(T$nSteps~interaction(T$Algorithm,T$ProbError), data = T)
#We assume that variances are similar


#Reject HoAB -> Check Assumptions - Longest subarray
#Normality of residuals 
qqnorm(longest.aov.out$res)
qqline(longest.aov.out$res)

shapiro.test(longest.aov.out$res)
#We assume normality if w is big

#Test Homogeneity of Variances
bartlett.test(T$Longest~T$Algorithm)
bartlett.test(T$Longest~T$ProbError)
bartlett.test(T$Longest~interaction(T$Algorithm,T$ProbError), data = T)
#We assume that variances are similar




#Post Hoc - Number of Steps
THSD_nSteps = TukeyHSD(nSteps.aov.out, alternative = "two.sided")
print(THSD_nSteps)
#Post Hoc - Longest Subarray
THSD_longest = TukeyHSD(longest.aov.out, alternative = "two.sided")
print(THSD_longest)

