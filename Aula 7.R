# Carregar pacotes necessários
library(tidyverse)
library(WDI)
library(scales)
library(gganimate)
library(gifski)

# Ajustar para evitar notação científica
options(scipen = 999)

# Obter dados de reservas totais (inclui ouro) para todos os países
reserveall <- WDI(country = 'all', 
                  indicator = 'FI.RES.TOTL.CD')

# Filtrar top 10 países com maiores reservas em 2023
top10_paises_2023 <- reserveall %>%
  filter(year == 2023, !is.na(FI.RES.TOTL.CD)) %>%
  arrange(desc(FI.RES.TOTL.CD)) %>%
  slice_head(n = 10) %>%
  pull(country)

# Filtrar o dataset original apenas com esses países
reserveall_top10 <- reserveall %>%
  filter(country %in% top10_paises_2023)

# Gráfico animado: evolução das reservas ao longo do tempo
graf_animado <- ggplot(reserveall_top10, aes(x = year, y = FI.RES.TOTL.CD, color = country)) +
  geom_line(size = 1.2) +
  geom_point(size = 2) +
  labs(title = "Evolução das Reservas Totais (Inclui Ouro, US$ Correntes)",
       subtitle = "Ano: {frame_along}",
       x = "Ano",
       y = "Reservas Totais (US$)",
       color = "País") +
  theme_minimal() +
  scale_y_continuous(labels = label_dollar()) +
  transition_reveal(year)

# Criar a animação
animacao <- animate(graf_animado, duration = 10, fps = 15, width = 800, height = 500, renderer = gifski_renderer())

# Visualizar animação no RStudio
animacao

# Salvar como GIF (opcional)
anim_save("reservas_totais_top10.gif", animation = animacao)
