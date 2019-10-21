"
runif -> random uniform numbers
dimname -> Gives A,B,C names to Var1 Var2 ..
"
set.seed(1410)
y <- matrix(runif(30),ncol=3,dimnames=list(letters[1:10],LETTERS[1:3]))
plot(y[,1],y[,2])

"Scatter plot -> pairs"
pairs(y)
"Scatter plot -> with labels
pch -> Point Symbols
"
plot(y[,1], y[,2], pch=20, col="red", main="Symbols and Labels")
text(y[,1]+0.03, y[,2], rownames(y))

"
Scatter plot -> just more settings

mar -> specifies the margin sizes around the plotting area in
order -> c(bottom,left, top, right)
col -> color of symbols
pch -> type of symbols, samples: example(points)
lwd -> size of symbols
cex.* -> control font sizes
"
op <- par(mar=c(8,8,8,8), bg="lightblue")
plot(y[,1], y[,2], type="p", col="red", cex.lab=1.2, cex.axis=1.2,
cex.main=1.2,cex.sub=1, lwd=4, pch=20, xlab="x label",
ylab="y label", main="My Main", sub="My Sub")
par(op)

"
Regression line on a Plot

lm -> creates regression line
abline -> adds one or more straight lines to plot
"
plot(y[,1], y[,2])
myline <- lm(y[,2]~y[,1])
abline(myline, lwd=2)
summary(myline)


"Log scale"
plot(y[,1], y[,2], log="xy")

"Add math equation on plot"
plot(y[,1], y[,2])
text(y[1,1], y[1,2],expression(sum(frac(1,sqrt(x^2*pi)))), cex=1.3)

"Single data set"
plot(y[,1], type="l", lwd=2, col="blue")

"Bar plot"

barplot(y[1:4,], ylim=c(0, max(y[1:4,])+0.3),beside=TRUE,legend=letters[1:4])
text(labels=round(as.vector(y[1:4,]),2), 
x=seq(1.5, 13, by=1) + sort(rep(c(0,1,2), 4)), y=as.vector(y[1:4,])+0.04)

"Bar plot with Error bars"
bar <- barplot(m <- rowMeans(y), ylim=c(0, 1.1))
stdev <- apply(y,1,sd)
arrows(bar, m, bar, m + stdev, length=0.15, angle = 90)


"Boxplot"
boxplot(y)

"Histogram"
hist(y, freq=TRUE, breaks=10)

"Density Plot"
plot(density(y), col="red")

"QQ plots for normal distribution"
qqnorm(as.vector(y))
qqline(as.vector(y))

"Pie Chart"
pie(y[,1], col=rainbow(length(y[,1]), start=0.1, end=0.8), clockwise=TRUE)
legend("topright", legend=row.names(y), cex=1.3, bty="n", pch=15, pt.cex=1.8,
col=rainbow(length(y[,1]), start=0.1, end=0.8), ncol=1)


