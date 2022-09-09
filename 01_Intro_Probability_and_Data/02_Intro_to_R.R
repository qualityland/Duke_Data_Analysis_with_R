library(tidyverse)

df <- read_csv("01_Intro_Probability_and_Data/arbuthnot.csv")

df %>% 
  pivot_longer(!year, names_to = "gender", values_to = "count") %>% 
  ggplot(aes(year, count, color = gender)) +
  geom_line()

dim(df)


present <- read_csv("data/present.csv")

dim(present)

range(present$year)

present %>% 
  mutate(total=boys+girls, prop_boys=boys/total) %>% 
  ggplot(aes(year, prop_boys)) +
  geom_point() +
  geom_line()

df2 <- present %>% 
  mutate(
    total=boys+girls, 
    prop_boys=boys/total,
    more_boys=boys>girls,
    boy_to_girl_ratio=boys/girls)

ggplot(df2, aes(year, total)) +
  geom_line()

as.data.frame(df2)
max(df2$total)
