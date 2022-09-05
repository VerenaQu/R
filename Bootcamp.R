library(gapminder)
library(tidyverse)
library(ggplot2)

gapminder_2007 <-
  filter(gapminder, year==2007) %>%
  group_by(continent) %>%
  mutate(country = fct_reorder(country, gdpPercap)) %>%
  top_n(5, gdpPercap)

#gapminder_2007

ggplot(gapminder_2007, aes(x = country, y = gdpPercap)) + geom_col(aes(fill = continent)) + coord_flip() +
  scale_fill_brewer(palette = "YlOrRd") +
  geom_text(aes(label = paste("$", round(gdpPercap))), nudge_y = -5000) +
  ggtitle("The Richest Countries on Earth (in 2007)") 

#+xlab("") #+ facet_wrap(~continent, scales = "free_x", nrow = 1) + #theme(axis.text.x = element_text(angle = 90))

library(gapminder)
library(tidyverse)
library(ggplot2)

gapminder_2007 <-
  filter(gapminder, year==2007)%>%
  mutate(country = fct_reorder(country, gdpPercap))%>%  
top_n(5, gdpPercap)  

gapminder_2007
