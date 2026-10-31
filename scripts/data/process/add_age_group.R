# add_age_group.R
# Creates an age category from the cleaned dataset.

library(tidyverse)

data_clean = data_clean %>%
  mutate(age_group = if_else(age < 30, "Under 30", "30 and above"))

write_csv(data_clean, "data/processed/dummy.csv")