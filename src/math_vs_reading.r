#Graph:2 - Math vs Reading
third_grade = read.csv("../input/third_grade.csv")
fourth_grade = read.csv("../input/fourth_grade.csv")
fifth_grade = read.csv("../input/fifth_grade.csv", na.strings="-")

math_array <- c(third_grade$Math, fourth_grade$Math, fifth_grade$Math)
reading_array <- c(third_grade$Reading, fourth_grade$Reading, fifth_grade$Reading)

max_math <- max(math_array, na.rm=TRUE)
max_reading <- max(reading_array, na.rm=TRUE)

min_math <- min(math_array, na.rm=TRUE)
min_reading <- min(reading_array, na.rm=TRUE)

scale <- c(150,160,170,180,190,200,210,220,230)
min_max <- c(150,230)

#This line is used to use legend out of plot area.
par(mar=c(5.1, 4, 4.1, 10.2), xpd=TRUE)

#Plot data, insert title, define axis range and set the legend
plot(reading_array, math_array, xlim=min_max, ylim=min_max, xlab="Reading", 
	ylab="Math", col="deepskyblue2", pch=19)
title(main="Fitted line plot\nMath = 5.316 + 0.9816 reading")
axis(1, at=scale)
axis(2, at=scale)
legend("topright", inset=c(-0.4,0), 
	legend=c("S = 4.27052","Rsq = 93.8%", "Rsq(adj) = 93.7%"))

#Create a square do delimit plot area.
clip(min_math-5, max_math+5, min_reading-5, max_reading+5)
#Create a line
linear_regression <- lm(math_array~reading_array)
abline(linear_regression$coefficients[1], linear_regression$coefficients[2], 
	col="deepskyblue2", lwd=2)
