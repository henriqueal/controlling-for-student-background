#Graph:6 - Reading vs X.Minority vs Grade
third_grade = read.csv("../input/third_grade.csv")
fourth_grade = read.csv("../input/fourth_grade.csv")
fifth_grade = read.csv("../input/fifth_grade.csv", na.strings="-")

x_scale <- c(0,10,20,30,40,50,60,70,80,90)
y_scale <- c(150,160,170,180,190,200,210,220,230)

min_max_x <- c(0,93)
min_max_y <- c(150,230)

#This line is used to use legend out of plot area.
par(mar=c(5.1, 4, 4.1, 9.2), xpd=TRUE)

#Plot data, insert title, define axis range and set the legend
plot(third_grade$X.Minority, third_grade$Reading, xlim=min_max_x, ylim=min_max_y, 
	xlab="%Minority", ylab="Reading", col="deepskyblue2", pch=19)
axis(1, at=x_scale)
axis(2, at=y_scale)
legend("topright", inset=c(-0.16,0), pch=c(21:23),
	legend=c(3,4,5), lty=1:3, col="deepskyblue2", title="Grade")

#Plot another points (4-th and 5-th grade)
points(fourth_grade$X.Minority, fourth_grade$Reading, col="deepskyblue2",
	pch=15)

points(fifth_grade$X.Minority, fifth_grade$Reading, col="deepskyblue2",
	pch=18, cex=1.3)


#Create a square do delimit plot area.
clip(min_minority-5, 92, min_reading-5, 230)
#Create lines
linear_regression <- lm(third_grade$Reading ~ third_grade$X.Minority)
abline(linear_regression$coefficients[1], linear_regression$coefficients[2], 
	col="deepskyblue2", lwd=2)

linear_regression <- lm(fourth_grade$Reading ~ fourth_grade$X.Minority)
abline(linear_regression$coefficients[1], linear_regression$coefficients[2], 
	col="deepskyblue2", lwd=2, lty=2)

linear_regression <- lm(fifth_grade$Reading ~ fifth_grade$X.Minority)
abline(linear_regression$coefficients[1], linear_regression$coefficients[2], 
	col="deepskyblue2", lwd=2, lty=3)
