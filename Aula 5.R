#install.packages("WDI")
#update.packages("wdi")
#install.packages("tinyverse")
#update.packages("tinyverse")
#library(tinyverse)
library(WDI)
options(scipen = 999) # AJUSTAR OS EM NOTAÇÃO CIENTÍFICA 

#DADOS DO PAINEL
basepibBR <- WDI(country = 'all', 
                 indicator = 'NY.GDP.MKTP.CD')

#CORTE TRANSVERSAL
basepibBR <- WDI(country = 'BR', 
               indicator = 'NY.GDP.MKTP.CD')

# SERIE TEMPORAL
basepib2023BR  <- WDI(country = 'BR', 
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)

#DADOS DO PAINEL
reservegoldall2023 <- WDI(country = 'all', 
                 indicator = 'FI.RES.TOTL.CD',
                 start = 2023, end = 2023)

#CORTE TRANSVERSAL
reservegoldusa <- WDI(country = 'USA', 
                 indicator = 'FI.RES.TOTL.CD')

# SERIE TEMPORAL
reservegoldusa2023  <- WDI(country = 'USA', 
                      indicator = 'FI.RES.TOTL.CD',
                      start = 2023, end = 2023)


