#install.packages("WDI")
#update.packages("wdi")
#install.packages("tidyverse")
#update.packages("tidyverse")
library(tidyverse)
library(WDI)
options(scipen = 999) # AJUSTAR OS EM NOTAÇÃO CIENTÍFICA 


#DADOS DO PAINEL
reservegoldall <- WDI(country = 'all', 
                 indicator = 'FI.RES.TOTL.CD')

#SERIE TEMPORAL
reservegoldusa <- WDI(country = 'USA', 
                 indicator = 'FI.RES.TOTL.CD')

#CORTE TRANSVERSAL
#reservegoldusa2023  <- WDI(country = 'all', 
 #                     indicator = 'FI.RES.TOTL.CD',
  #                    start = 2023, end = 2023)

#função ggplot precisa base de dados, mapeamento o que vai no eixo x e no y

#grafpainel <- ggplot(reservegoldall,
#                     mapping = aes(y = FI.RES.TOTL.CD,
   #                                x = year)) + 

#grafcorte <- ggplot(reservegoldusa,
#                     mapping = aes(y = FI.RES.TOTL.CD,
    #                               x = year)) + 
  
grafserie <- ggplot(reservegoldusa,
                      mapping = aes(y = FI.RES.TOTL.CD,
                                    x = year)) + 

  geom_line() #como o grafico vai ser transmtido
print(grafserie)
