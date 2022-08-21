library(ggplot2)

family.names.ages <- data.frame (name = c("John", "Peter", "Ana"), 
                                age = c(45, 28, 12))
View(family.names.ages)

family.names.ages.plot <- ggplot(family.names.ages, aes(x=name, y=age)) +
  geom_point()

View(family.names.ages.plot)

str(family.names.ages.plot)

