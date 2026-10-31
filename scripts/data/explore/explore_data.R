# explore_data.R
#
# Quick, informal look at the cleaned data. Not final output.

library(tidyverse)

# output directory
outdir = "output/explore"
dir.create(outdir, showWarnings = FALSE, recursive = TRUE)

# Import cleaned data
data_clean = read_csv("data/processed/dummy.csv")

data_clean %>%
  print()

g =
  ggplot(data_clean, aes(x = age_group, y = age)) +
  geom_boxplot()
ggsave(g
    , filename = file.path(outdir, 'boxplot.pdf')
)
