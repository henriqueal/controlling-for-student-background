#Graph:2 - Math vs Reading
third_grade = read.csv("../input/third_grade.csv")
fourth_grade = read.csv("../input/fourth_grade.csv")
fifth_grade = read.csv("../input/fifth_grade.csv", na.strings="-")

print(third_grade)
print(fourth_grade)
print(fifth_grade)

boxplot(third_grade$Math, fourth_grade$Math, fifth_grade$Math, third_grade$Reading, fourth_grade$Reading, fifth_grade$Reading, 
names = c("3","4", "5", "3","4", "5"), xlab="Math\t\t\t\t\t\t\tReading", ylab="Data", ylim=c(150,230), at=c(1,2,3,6,7,8))
axis(2,at=c(150,160,170,180,190,200,210,220,230))
title(xlab = "Grade", line = 4)






