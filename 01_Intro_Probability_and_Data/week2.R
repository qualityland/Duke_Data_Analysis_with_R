library(tidyverse)

df <- read_csv("data/google-global-user-data-requests.csv",
               skip = 1,
               col_names = c("period",
                             "country", 
                             "cldr",
                             "legal",
                             "ud_req",
                             "perc_discl",
                             "accounts")
               )

df %>% 
  group_by(country) %>% 
  summarise(all_req = sum(ud_req)) %>% 
  print(n = Inf)

