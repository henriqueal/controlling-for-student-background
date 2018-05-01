library(rmarkdown)
library(knitr)
render("controlling-for-student-background.rmd", pdf_document())
knit("controlling-for-student-background.rmd")
