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

print(math_array[1])
print(reading_array[1])



par(mar=c(5.1, 4, 4.1, 11.2), xpd=TRUE)
plot(reading_array, math_array, xlim=min_max, ylim=min_max, xlab="Reading", 
	ylab="Math", col="deepskyblue2", pch=19)

axis(1, at=scale)
axis(2, at=scale)

legend("topright", inset=c(-0.4,0), 
	legend=c("S            4.27052","Rsq          93.8%", "Rsq(adj)  93.7%"))

clip(min_math-5, max_math+5, min_reading-5, max_reading+5)
abline(5.316, 0.9816, col="deepskyblue2", lwd=2)
#segments(x0=min_max,y0=min_reading,x1=max_math,y1=max_reading)
#abline(157,0)



aux <- lm(math_array~reading_array)

print(summary(aux))

#Residual standard error: 4.271 on 61 degrees of freedom 
# (3 observations deleted due to missingness)
#Multiple R-squared:  0.9382,	Adjusted R-squared:  0.9372 

#> summary(aux)[6]
#$sigma
#[1] 4.270524


#> summary(aux)[8]
#$r.squared
#[1] 0.9381974

#> summary(aux)[9]
#$adj.r.squared
#[1] 0.9371842


#Criar tabelinha no canto superior do grafico com os valores de S, R-sq e R_sq(adj)
#Criar os titulos
#Ajustar o layout
