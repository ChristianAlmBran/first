install.packages('eeptools')
library(eeptools)

# vetor com nome das Organizações Internacionais
nomeOrganizacaoInternacional <- c("UE", # União Europeia
                                  "OEA", # Organização dos Estados Americanos
                                  "MERCOSUL", # Mercado Comum do Sul 
                                  "ASEAN") # Associação de Nações do Sudeste Asiático

# vetor com a data de criação das Organizações Internacionais 
criacaoOrganizacoesInternacionais <- as.Date(c("1993-11-01", 
                                               "1948-04-30", 
                                               "1991-03-26", 
                                               "1967-08-08"))

# vetor com as idades das Organizações Internacionais 
idadeOrganizaçãoInternacional <- round (age_calc( criacaoOrganizacoesInternacionais,
                                                  units = 'years'))

# dataframe com base nos vetores

listaOrganizacoesInternacionais <- data.frame(
  nome = nomeOrganizacaoInternacional, # nome
  dataCriação = criacaoOrganizacoesInternacionais, # data da criação
  idade = idadeOrganizaçãoInternacional # idade da Organização Internacional
)

View(listaOrganizacoesInternacionais)

str(listaOrganizacoesInternacionais)

