# AULA 4
# WDI - WOLRD DEVELOPMENT INDICATORS - BASE DE DADOS DO BANCO MUNDIAL

a <- 1 + 1
#install.packages("WDI")
library(WDI)
#update.packages("wdi")
#SEMPRE PROCURE AS VIGNETTES = WHITE PAPER
#VIGNETTES = WHITE PAPER
#EXEMPLO DE VIGNETTES = https://github.com/vincentarelbundock/WDI
#LER READ ME


#WDIsearch('gdp')
#GDP = "PIB"
#SITE PARA ACHAR OS DADOS E CÓDIGO DA VARIAVEIS: https://databank.worldbank.org/source/world-development-indicators
#BAIXAR DADOS DO GDP
#DETERMINADO TEMPO E PAIS/ESTADO/MÚNCIPIO

#GDP (current US$)(NY.GDP.MKTP.CD)
#GROSS DOMESTIC PRODUCT (GDP) EM DÓLAR EUA
#CÓDIGO NY.GDP.MKTP.CD

#CRIAR OBJETO COD_GDP
COD_GDP <- WDIsearch('gdp')
#COMO PODE VER O SITE DO BANCO É MAIS EFICENTE 

#COM O CÓDIGO - SALVO EM UM OBJETO O CÓDIGO EXEMPLO BASEPIB
options(scipen = 999) # AJUSTAR OS EM NOTAÇÃO CIENTÍFICA 
basepib <- WDI(country = 'all', 
               indicator = 'NY.GDP.MKTP.CD')
basepib2023  <- WDI(country = 'all', 
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)

# API (FORMA DE ACESSO)
# DADOS DO BANCO MUNDIAL (WOLRD BANK)
# WORLD DEVOLPMENT INDICATORS (BASE DE DADOS)

#AULA 4 ACESSADO AO DADOS GDP
#PRODUTO INTERNO PRODUTO

#AULA 5
#CORTE TRANSVERSAL
# - vARIOS LOCAIS
# - UM PERIODO
#SERIE TEMPORAL
# - UM LOCAL
# - VARIOS PERIODOS
#SEGUE EXEMPLO
basepibR  <- WDI(country = 'BR', 
                    indicator = 'NY.GDP.MKTP.CD')


options(scipen = 999)
graduation <- WDI(country = 'US',
                  indicator = 'SE.ADT.LITR.ZS',
                  start = 2010, end = 2023)


