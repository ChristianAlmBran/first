# Ativação do pacote ggplot2
library(ggplot2)

# Objeto simples
familyNamesAges <- data.frame (name = c("John", "Peter", "Ana"), 
                                age = c(45, 28, 12))

# Visualização do objeto simples
View(familyNamesAges)

# Criação do objeto complexo através das informações do objeto simples
familyNamesAgesPlot <- ggplot(familyNamesAges, aes(x = name, y = age)) +
  geom_point()

# Visualização do objeto complexo
View(familyNamesAgesPlot)

# Demonstração da complexidade do objeto
str(familyNamesAgesPlot)

