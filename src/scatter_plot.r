#Graph:2 - Math vs Reading
third_grade = read.csv("../input/third_grade.csv")
fourth_grade = read.csv("../input/fourth_grade.csv")
fifth_grade = read.csv("../input/fifth_grade.csv", na.strings="-")

third_grade_summary <- lm(third_grade$Reading ~ third_grade$X.Poverty)
#187.0262528
#-0.2709659

fourth_grade_summary <- lm(fourth_grade$Reading ~ fourth_grade$X.Poverty)
#a=206.8652007
#b=-0.3871828

fifth_grade_summary <- lm(fifth_grade$Reading ~ fifth_grade$X.Poverty)
#a=225.5290924
#b=-0.3570855

#plot(reading_array, math_array, xlim=c(150,230), ylim=c(150,230), xlab="Math", ylab="Reading", col="blue")
#axis(1, at=x_scale)
#axis(2, at=x_scale)
#abline(5.316, 0.9816)
#abline(180,0)



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
