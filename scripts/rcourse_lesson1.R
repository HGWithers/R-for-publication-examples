library(dplyr)
library(ggplot2)

## Read in data and organize ####
# Read in data
data <- read.table("data/language_example.txt", header = T, sep = "\t")

# Look at data
dim(data)
head(data)
tail(data)
xtabs(~group, data)

# Subset out bilinguals
data_bl <- data %>%
  filter(group == "bilingual")

# Look at bilingual data
dim(data_bl)
head(data_bl)
tail(data_bl)
xtabs(~group, data_bl)
xtabs(~type, data_bl)
