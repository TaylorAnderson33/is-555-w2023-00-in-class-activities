library(tidyverse)

algs <- read_csv('https://www.dropbox.com/s/qomjauiqxb8o4qd/kaggle_algoriths.csv?dl=1')

view(algs)


algs %>%
  filter(current_title != 'Student',
         current_title != 'Currently not employed') %>% 
  ggplot(aes(x = algorithm, fill = algorithm)) +
  geom_bar() +
  facet_wrap(~ml_maturity)

