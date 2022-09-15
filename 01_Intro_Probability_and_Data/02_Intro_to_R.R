library(dplyr)
library(ggplot2)
library(statsr)

data(arbuthnot)
arbuthnot
dim(arbuthnot)

arbuthnot <- arbuthnot %>% 
  mutate(total=boys+girls)

ggplot(arbuthnot, aes(x=year, y=total)) +
  geom_line() +
  geom_point()

#present <- read_csv("data/present.csv")
data(present)
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
