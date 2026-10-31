# analysis.R
#
# Final statistical analysis. Writes outputs to `outdir`,
# which is reproducible from code + data and therefore excluded from Git.

library(tidyverse)

# output directory
outdir = "output/analysis"
dir.create(outdir, showWarnings = FALSE, recursive = TRUE)

# Import processed data
data_clean = read_csv("data/processed/dummy.csv")

# Summarise age by age group
summary_table = data_clean %>%
  group_by(age_group) %>%
  summarise(
    n = n(),
    mean_age = mean(age),
    .groups = "drop"
  )

# Save results
write_csv(
  summary_table,
  file.path(outdir, "age_summary.csv")
)