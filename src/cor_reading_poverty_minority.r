#Tab:1 - Correlation
third_grade = read.csv("../input/third_grade.csv")
fourth_grade = read.csv("../input/fourth_grade.csv")
fifth_grade = read.csv("../input/fifth_grade.csv", na.strings="-")

minority_3 <- cor(third_grade$X.Minority, third_grade$Reading, 
	method="pearson")
minority_4 <- cor(fourth_grade$X.Minority, fourth_grade$Reading, 
	method="pearson")
minority_5 <- cor(fifth_grade$X.Minority, fifth_grade$Reading, 
	method="pearson", use = "complete.obs")

poverty_3 <- cor(third_grade$X.Poverty, third_grade$Reading, 
	method="pearson")
poverty_4 <- cor(fourth_grade$X.Poverty, fourth_grade$Reading, 
	method="pearson")
poverty_5 <- cor(fifth_grade$X.Poverty, fifth_grade$Reading, 
	method="pearson", use = "complete.obs")

cor_between <- c('Reading scores and', '%minority', '%poverty')
third_grade <- c('', format(round(minority_3, 2), nsmall = 2), 
	format(round(poverty_3, 2), nsmall = 2))
fourth_grade <- c('', format(round(minority_4, 2), nsmall = 2), 
	format(round(poverty_4, 2), nsmall = 2))
fifth_grade <- c('', format(round(minority_5, 2), nsmall = 2), 
	format(round(poverty_5, 2), nsmall = 2))

cor_data_frame <- data.frame(cor_between, third_grade, fourth_grade, fifth_grade)
colnames(cor_data_frame) <- c('Correlation between', '3rd Grade', '4th Grade', '5th Grade')