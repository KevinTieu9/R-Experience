
#plots a graph with 2 variables of child and parent
plot(child ~ parent, galton)


#helps make high frequency points more visible
#meaning if there are 10 points that are at height 68
# the data of hose 10 points are spread out for better viewing.
plot(jitter(child, 4) ~parent, galton)


#generate a regression line/linear model and store into regrline 
regrline <- lm(child ~ parent, galton)

#creates a red regression line, the regression line is an estimate based on the data
abline(regrline, lwd=3, col='red')

#used to examine the regression line, gives data based on the regression line
summary(regrline)