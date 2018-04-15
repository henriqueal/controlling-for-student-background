#Graph:3 - Reading vs X.Poverty
third_grade = read.csv("../input/third_grade.csv")
fourth_grade = read.csv("../input/fourth_grade.csv")
fifth_grade = read.csv("../input/fifth_grade.csv", na.strings="-")

poverty_array <- c(third_grade$X.Poverty, fourth_grade$X.Poverty, fifth_grade$X.Poverty)
reading_array <- c(third_grade$Reading, fourth_grade$Reading, fifth_grade$Reading)

max_poverty <- max(poverty_array, na.rm=TRUE)
max_reading <- max(reading_array, na.rm=TRUE)

min_poverty <- min(poverty_array, na.rm=TRUE)
min_reading <- min(reading_array, na.rm=TRUE)

x_scale <- c(0,10,20,30,40,50,60,70,80,90)
y_scale <- c(150,160,170,180,190,200,210,220,230)

min_max_x <- c(0,90)
min_max_y <- c(150,230)

#Plot data, insert title, define axis range and set the legend
plot(poverty_array, reading_array, xlim=min_max_x, ylim=min_max_y, xlab="%Poverty", 
	ylab="Reading", col="deepskyblue2", pch=19)

axis(1, at=x_scale)
axis(2, at=y_scale)

#Create a square do delimit plot area.
clip(min_poverty-5, max_poverty+5, min_reading-5, max_reading+5)
#Create a line
linear_regression <- lm(reading_array~poverty_array)
abline(linear_regression$coefficients[1], linear_regression$coefficients[2], 
	col="deepskyblue2", lwd=2)
