# Packages
library(tidyverse)
library(tibble)
library(dplyr)
library(ggplot2)

# April 2020 Data
april_2020 <- read_csv("data_raw.raw/2020-04/2020-04-west-yorkshire-street.csv")

# Summary stats
total_crimes <- nrow(april_2020)

missing_summary <- colSums(is.na(april_2020))

top_crime_types <- april_2020 %>%
  count(`Crime type`, sort = TRUE) %>%
  slice_max(n, n = 5)

top_locations <- april_2020 %>%
  count(Location, sort = TRUE) %>%
  slice_max(n, n = 5)

top_outcomes <- april_2020 %>%
  count(`Last outcome category`, sort = TRUE) %>%
  slice_max(n, n = 5)

# Summary table
summary_table <- tibble(
  Metric = c(
    "Total crimes",
    paste("Missing:", names(missing_summary)),
    paste("Top crime type:", top_crime_types$`Crime type`),
    paste("Top location:", top_locations$Location),
    paste("Top outcome:", top_outcomes$`Last outcome category`)
  ),
  Value = c(
    total_crimes,
    as.integer(missing_summary),
    as.integer(top_crime_types$n),
    as.integer(top_locations$n),
    as.integer(top_outcomes$n)
  )
) %>%
  mutate(Value = as.character(Value))

note_text <- "This summary provides key crime statistics for West Yorkshire in April 2020, including total crimes, missing values, top 5 crime types, locations, and outcomes. It offers a snapshot of crime patterns and data quality for the month."
summary_table <- bind_rows(
  summary_table,
  tibble(Metric = "Note", Value = note_text)
)

# CSV File
write_csv(summary_table, "data_clean/april_2020_comprehensive_summary.csv")


# May 2020 Data
may_2020 <- read_csv("data_raw.raw/2020-05/2020-05-west-yorkshire-street.csv")

# Summary Stats
total_crimes <- nrow(may_2020)

missing_summary <- colSums(is.na(may_2020))

top_crime_types <- may_2020 %>% 
  count(`Crime type`, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_locations <- may_2020 %>% 
  count(Location, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_outcomes <- may_2020 %>% 
  count(`Last outcome category`, sort = TRUE) %>% 
  slice_max(n, n = 5)

# Summary Table
summary_table <- tibble(
  Metric = c(
    "Total crimes",
    paste("Missing:", names(missing_summary)),
    paste("Top crime type:", top_crime_types$`Crime type`),
    paste("Top location:", top_locations$Location),
    paste("Top outcome:", top_outcomes$`Last outcome category`)
  ),
  Value = c(
    total_crimes,
    as.integer(missing_summary),
    as.integer(top_crime_types$n),
    as.integer(top_locations$n),
    as.integer(top_outcomes$n)
  )
) %>% mutate(Value = as.character(Value))

note_text <- "This summary provides key crime statistics for West Yorkshire in May 2020, including total crimes, missing values, top 5 crime types, locations, and outcomes. It offers a snapshot of crime patterns and data quality for the month."
summary_table <- bind_rows(summary_table, tibble(Metric = "Note", Value = note_text))

# CSV File
write_csv(summary_table, "data_clean/may_2020_comprehensive_summary.csv")

# June 2020 Data
june_2020 <- read_csv("data_raw.raw/2020-06/2020-06-west-yorkshire-street.csv")

# Summary Stats
total_crimes <- nrow(june_2020)

missing_summary <- colSums(is.na(june_2020))

top_crime_types <- june_2020 %>% 
  count(`Crime type`, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_locations <- june_2020 %>% 
  count(Location, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_outcomes <- june_2020 %>% 
  count(`Last outcome category`, sort = TRUE) %>% 
  slice_max(n, n = 5)

# Summary Table
summary_table <- tibble(
  Metric = c(
    "Total crimes",
    paste("Missing:", names(missing_summary)),
    paste("Top crime type:", top_crime_types$`Crime type`),
    paste("Top location:", top_locations$Location),
    paste("Top outcome:", top_outcomes$`Last outcome category`)
  ),
  Value = c(
    total_crimes,
    as.integer(missing_summary),
    as.integer(top_crime_types$n),
    as.integer(top_locations$n),
    as.integer(top_outcomes$n)
  )
) %>% mutate(Value = as.character(Value))

note_text <- "This summary provides key crime statistics for West Yorkshire in June 2020, including total crimes, missing values, top 5 crime types, locations, and outcomes. It offers a snapshot of crime patterns and data quality for the month."
summary_table <- bind_rows(summary_table, tibble(Metric = "Note", Value = note_text))

# CSV File
write_csv(summary_table, "data_clean/june_2020_comprehensive_summary.csv")

# July 2020 Data
july_2020 <- read_csv("data_raw.raw/2020-07/2020-07-west-yorkshire-street.csv")

# Summary Stats
total_crimes <- nrow(july_2020)

missing_summary <- colSums(is.na(july_2020))

top_crime_types <- july_2020 %>% 
  count(`Crime type`, sort = TRUE) %>%
  slice_max(n, n = 5)

top_locations <- july_2020 %>% 
  count(Location, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_outcomes <- july_2020 %>% 
  count(`Last outcome category`, sort = TRUE) %>% 
  slice_max(n, n = 5)

# Summary Table
summary_table <- tibble(
  Metric = c(
    "Total crimes",
    paste("Missing:", names(missing_summary)),
    paste("Top crime type:", top_crime_types$`Crime type`),
    paste("Top location:", top_locations$Location),
    paste("Top outcome:", top_outcomes$`Last outcome category`)
  ),
  Value = c(
    total_crimes,
    as.integer(missing_summary),
    as.integer(top_crime_types$n),
    as.integer(top_locations$n),
    as.integer(top_outcomes$n)
  )
) %>% mutate(Value = as.character(Value))

note_text <- "This summary provides key crime statistics for West Yorkshire in July 2020, including total crimes, missing values, top 5 crime types, locations, and outcomes. It offers a snapshot of crime patterns and data quality for the month."

# CSV File
summary_table <- bind_rows(summary_table, tibble(Metric = "Note", Value = note_text))
write_csv(summary_table, "data_clean/july_2020_comprehensive_summary.csv")

# August 2020 Data
august_2020 <- read_csv("data_raw.raw/2020-08/2020-08-west-yorkshire-street.csv")

# Summary Stats
total_crimes <- nrow(august_2020)

missing_summary <- colSums(is.na(august_2020))

top_crime_types <- august_2020 %>% 
  count(`Crime type`, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_locations <- august_2020 %>% 
  count(Location, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_outcomes <- august_2020 %>% 
  count(`Last outcome category`, sort = TRUE) %>% 
  slice_max(n, n = 5)

# Summary Table
summary_table <- tibble(
  Metric = c(
    "Total crimes",
    paste("Missing:", names(missing_summary)),
    paste("Top crime type:", top_crime_types$`Crime type`),
    paste("Top location:", top_locations$Location),
    paste("Top outcome:", top_outcomes$`Last outcome category`)
  ),
  Value = c(
    total_crimes,
    as.integer(missing_summary),
    as.integer(top_crime_types$n),
    as.integer(top_locations$n),
    as.integer(top_outcomes$n)
  )
) %>% mutate(Value = as.character(Value))

note_text <- "This summary provides key crime statistics for West Yorkshire in August 2020, including total crimes, missing values, top 5 crime types, locations, and outcomes. It offers a snapshot of crime patterns and data quality for the month."
summary_table <- bind_rows(summary_table, tibble(Metric = "Note", Value = note_text))

# CSV File
write_csv(summary_table, "data_clean/august_2020_comprehensive_summary.csv")

# September 2020 Data
september_2020 <- read_csv("data_raw.raw/2020-09/2020-09-west-yorkshire-street.csv")

# Summary Stats
total_crimes <- nrow(september_2020)

missing_summary <- colSums(is.na(september_2020))

top_crime_types <- september_2020 %>% 
  count(`Crime type`, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_locations <- september_2020 %>% 
  count(Location, sort = TRUE) %>% 
  slice_max(n, n = 5)

top_outcomes <- september_2020 %>% 
  count(`Last outcome category`, sort = TRUE) %>% 
  slice_max(n, n = 5)

# Summary Table
summary_table <- tibble(
  Metric = c(
    "Total crimes",
    paste("Missing:", names(missing_summary)),
    paste("Top crime type:", top_crime_types$`Crime type`),
    paste("Top location:", top_locations$Location),
    paste("Top outcome:", top_outcomes$`Last outcome category`)
  ),
  Value = c(
    total_crimes,
    as.integer(missing_summary),
    as.integer(top_crime_types$n),
    as.integer(top_locations$n),
    as.integer(top_outcomes$n)
  )
) %>% mutate(Value = as.character(Value))

note_text <- "This summary provides key crime statistics for West Yorkshire in September 2020, including total crimes, missing values, top 5 crime types, locations, and outcomes. It offers a snapshot of crime patterns and data quality for the month."
summary_table <- bind_rows(summary_table, tibble(Metric = "Note", Value = note_text))

# CSV File
write_csv(summary_table, "data_clean/september_2020_comprehensive_summary.csv")



# ----------
# Crime Trends Across Months (April - September 2020)
# ----------

monthly_totals <- tibble(
  Month = c("April", "May", "June", "July", "August", "September"),
  Total_Crimes = c(21785, 24657, 26730, 29278, 29433, 27015)
)
print(monthly_totals)
write_csv(monthly_totals, "data_clean/monthly_crime_totals_apr_sep_2020.csv")

# Trend Plot
monthly_totals <- monthly_totals %>% 
  mutate(Month = factor(Month, levels = c("April", "May", "June", "July", "August", "September")))
ggplot(monthly_totals, aes(x = Month, y = Total_Crimes, group = 1)) +
  geom_line(color = "steelblue", size = 1.2) +
  geom_point(size = 3) +
  labs(title = "Total Crimes per Month (April-September 2020)",
       x = "Month", y = "Number of Crimes") +
  theme_minimal()

ggsave("figures/monthly_crime_trend_apr_sep_2020.png", width = 8, height = 5)


# ----------
# Crime Type Trends Across Months (April - September 2020)
# ----------

# Combination of all months, and summary of top crime types
all_months <- bind_rows(
  april_2020 %>% mutate(Month = "April"),
  may_2020 %>% mutate(Month = "May"),
  june_2020 %>% mutate(Month = "June"),
  july_2020 %>% mutate(Month = "July"),
  august_2020 %>% mutate(Month = "August"),
  september_2020 %>% mutate(Month = "September")
)

# Summary of crime types by month
crime_type_trends <- all_months %>%
  count(Month, `Crime type`) %>%
  arrange(Month, desc(n))

# Overall top 5 crime types
top_types <- all_months %>%
  count(`Crime type`, sort = TRUE) %>%
  slice_max(n, n = 5) %>%
  pull(`Crime type`)

crime_type_trends_top <- crime_type_trends %>%
  filter(`Crime type` %in% top_types)

crime_type_trends_top <- crime_type_trends_top %>%
  mutate(Month = factor(Month, levels = c("April", "May", "June", "July", "August", "September"))) %>%
  arrange(Month, `Crime type`)

# CSV summary table for the top 5 crime types
write_csv(crime_type_trends_top, "data_clean/crime_type_trends_top5_apr_sep_2020.csv")

# Top 5 crime types plot
ggplot(crime_type_trends_top, aes(x = Month, y = n, color = `Crime type`, group = `Crime type`)) +
  geom_line(size = 1.2) +
  geom_point(size = 2) +
  labs(title = "Trends in Top 5 Crime Types (April–September 2020)",
       x = "Month", y = "Number of Crimes", color = "Crime Type") +
  theme_minimal()

ggsave("figures/crime_type_trends_top5_apr_sep_2020.png", width = 8, height = 5)

# ----------
# Notable geographic/area-based patterns
# ----------

# Top 5 locations for each month
top_locations_by_month <- all_months %>%
  count(Month, Location, sort = TRUE) %>%
  group_by(Month) %>%
  slice_max(n, n = 5) %>%
  ungroup()

top_locations_by_month <- top_locations_by_month %>%
  mutate(Month = factor(Month, levels = c("April", "May", "June", "July", "August", "September"))) %>%
  arrange(Month, desc(n))

write_csv(top_locations_by_month, "data_clean/top_locations_by_month_apr_sep_2020.csv")

# Overall Top 10 locations (across all months)

top10_locations <- all_months %>%
  count(Location, sort = TRUE) %>%
  slice_max(n, n = 10) %>%
  pull(Location)

# counts for these locations by month
top_locations_monthly <- all_months %>%
  filter(Location %in% top10_locations) %>%
  count(Month, Location) %>%
  mutate(Month = factor(Month, levels = c("April", "May", "June", "July", "August", "September"))) %>%
  arrange(Month, Location)

write_csv(top_locations_monthly, "data_clean/top10_locations_by_month_apr_sep_2020.csv")

# Visual for the top 10 locations overall
ggplot(top_locations_overall, aes(x = reorder(Location, n), y = n)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Top 10 Crime Locations (April–September 2020)",
       x = "Location", y = "Number of Crimes") +
  theme_minimal()

ggsave("figures/top_locations_overall_apr_sep_2020.png", width = 8, height = 5)

# Month with the highest total crimes
monthly_totals <- all_months %>%
  count(Month) %>%
  arrange(desc(n))
peak_month <- monthly_totals$Month[1]
print(paste("Month with highest total crimes:", peak_month))

# Top 10 locations for the peak month
peak_month_data <- all_months %>% filter(Month == peak_month)
peak_month_top_locations <- peak_month_data %>%
  count(Location, sort = TRUE) %>%
  slice_max(n, n = 10)

write_csv(peak_month_top_locations, paste0("data_clean/top_locations_", tolower(peak_month), "_2020.csv"))

# Visuals for the top locations for the peak month (August)
ggplot(peak_month_top_locations, aes(x = reorder(Location, n), y = n)) +
  geom_col(fill = "darkgreen") +
  coord_flip() +
  labs(title = paste("Top 10 Crime Locations (", peak_month, " 2020)", sep = ""),
       x = "Location", y = "Number of Crimes") +
  theme_minimal()

ggsave(paste0("figures/top_locations_", tolower(peak_month), "_2020.png"), width = 8, height = 5)

# ----------
# Overall Most and Least Common Crime Types (April–September 2020)
# ----------

# Summary of total crimes by type (across all months)
crime_type_summary <- all_months %>%
  count(`Crime type`, sort = TRUE)

write_csv(crime_type_summary, "data_clean/crime_type_summary_apr_sep_2020.csv")

# The most and least common crime types
most_common <- crime_type_summary %>% slice_max(n, n = 1)
least_common <- crime_type_summary %>%
  filter(!is.na(`Crime type`) & `Crime type` != "") %>%
  slice_min(n, n = 1)

print(most_common)
print(least_common)

# Visuals of the distribution
ggplot(crime_type_summary, aes(x = reorder(`Crime type`, n), y = n)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Total Crimes by Type (April–September 2020)",
       x = "Crime Type", y = "Number of Crimes") +
  theme_minimal()

ggsave("figures/crime_type_summary_apr_sep_2020.png", width = 8, height = 5)

