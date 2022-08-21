# criando a distribuição normal
tarefaSemente <- addTaskCallback(function(...) {set.seed(123);TRUE}) 
tarefaSemente 

# distribuição normal simulada
distNormalSimulacao <- rnorm(100) 

# bootstraping com função replicate
set.seed(412)

bootsDistNormal25 <- replicate(25, sample(distNormalSimulacao, 10, replace = TRUE)) 

View(bootsDistNormal25)

# calculando a mediana de cada rodada de bootstrap
medianBootsNormal25 <- replicate(25, median(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a mediana de 25 amostras de 10 casos
medianBootsNormal75 <- replicate(75, median(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a mediana de 75 amostras de 10 casos
medianBootsNormal150 <- replicate(150, median(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a mediana de 150 amostras de 10 casos

# comparando as medianas
median(maxBootsNormal25)
median(maxBootsNormal75)
median(maxBootsNormal150) 
median(distNormalSimulacao)

# partições
library(caret)

# partições de dados
particaoDistNormal <- createDataPartition(1:length(distNormalSimulacao), p=.8)
# partição para treinar os dados, usando a partição anterior.
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)] 
# partição para testar os dados, usando a partição anterior
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)] 
 
