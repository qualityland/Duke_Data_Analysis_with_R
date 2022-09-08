library(tidyverse)

### Chapter 1.1 Case study: using stents to prevent strokes

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

# 1.2
data(sinusitis, package = "openintro")
table(sinusitis)

# (a) What percent of patients in the treatment group experienced improvement in
#     symptoms?
66 / 85

# (b) What percent experienced improvement in symptoms in the control group?
65 / 81

# (c) In which group did a higher percentage of patients experience 
#     improvement in symptoms?
# Answer: control group

# (d) Your findings so far might suggest a real difference in effectiveness of
#     antibiotic and placebo treatments for improving symptoms of sinusitis.
#     However, this is not the only possible conclusion that can be drawn
#     based on your findings so far. What is one other possible explanation for
#     the observed difference between the percentages of patients in the
#     antibiotic and placebo treatment groups that experience improvement in
#     symptoms of sinusitis?
# Answer: Very probable that result is due to chance.




### Chapter 1.2 Data Basics

data(loan50, package = "openintro")
head(loan50)
?openintro::loan50

county <- read_csv("data/county.csv")
head(county)
str(county)

# 1.2.2 Types of Variables

# Example 1.5
# Data were collected about students in a statistics course.
# Three variables were recorded for each student: 
#   a) number of siblings,
#   b) student height
#   c) whether the student had previously taken a statistics course.
# Classify each of the variables as continuous numerical, discrete numerical,
# or categorical.
# Answer:
#   a) discrete numerical
#   b) coontiuous numerical
#   c) categorical

# Guided Practice 1.6
# group (treatment or control): categorical
# num_migraines: numerical discrete



# 1.2.3 Relationship between Variables





