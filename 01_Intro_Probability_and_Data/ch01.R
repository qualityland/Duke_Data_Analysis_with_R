library(tidyverse)

### chapter 1.1

# show all data sets in package
data(package = "openintro")

data(stent30, package = "openintro")
data(stent365, package = "openintro")

# now datasets are available
stent30
stent365

# contingency table (cross tabulation, crosstab)
table(stent30)
table(stent365)

# merge both data sets
df <- tibble(patient = as.integer(rownames(stent30)),
              group = stent30$group,
              outcome_30 = stent30$outcome,
              outcome_365 = stent365$outcome)

df

# Guided Practice 1.1
45 / 225

# Excercises

# 1.1
data(migraine, package = "openintro")
table(migraine)

# (a) What percent of patients in the treatment group were pain free 24 hours
#     after receiving acupuncture?
10 / 43

# (b) What percent were pain free in the control group?
2 / 46

# (c) In which group did a higher percent of patients become pain free 24 hours
#     after receiving acupuncture?
# Answer: treatment group

# (d) Your findings so far might suggest that acupuncture is an effective
#     treatment for migraines for all people
# Answer: Possible, but not very probable that result is due to chance.


### chapter 1.2

data(email50, package = "openintro")
head(email50)


### exercise 1.2
county <- read_csv("data/county.csv")
county
names(county)
# Answer: 3142 observations, 15 variables


### chapter 1.2.2

county %>% 
  select(per_capita_income, pop2010, state, smoking_ban)
