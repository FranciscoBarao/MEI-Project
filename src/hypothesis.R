
#exercicio 5.1
D = read.table(file = "data.in",header = TRUE)
boxplot(D$Bugs~D$Team,data = D)
boxplot(D$Bugs~D$Method,data = D)
interaction.plot(D$Team, D$Method,D$Bugs)
aov.out = aov(D$Bugs~D$Team*D$Method, data = D)
#Avaliar F e P.. verufucar se se rejeita HoAB
summary(aov.out)

#Check Assumption
qqnorm(aov.out$res)
qqline(aov.out$res)

shapiro.test(aov.out$res)

bartlett.test(D$Bugs~D$Team)
bartlett.test(D$Bugs~D$Method)
bartlett.test(D$Bugs~interaction(D$Team,D$Method),data = D)


#Post Hoc - Compare means
t = TukeyHSD(aov.out,alternative = "two.sided")
print(t)
