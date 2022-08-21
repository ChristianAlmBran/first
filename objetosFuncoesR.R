library(ggplot2)

familyNamesAges <- data.frame (name = c("John", "Peter", "Ana"), 
                                age = c(45, 28, 12))
View(familyNamesAges)

familyNamesAgesPlot <- ggplot(familyNamesAges, aes(x=name, y=age)) +
  geom_point()

View(familyNamesAgesPlot)

str(familyNamesAgesPlot)

