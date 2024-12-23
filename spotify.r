## Load Libraries and Dataset
install.packages('tidyverse')
install.packages('ggplot2')
install.packages('ggcorrplot')

library(tidyverse)
library(ggplot2)
library(ggcorrplot)

df <- read.csv('spotify.csv')

#First 5 observations
head(df,5)

str(df)

glimpse(df)

summary(df)

# Count missing (NA) values for all columns
colSums(is.na(df))

# Count blank strings for all columns
colSums(df == "")

# Check for "NULL" or "unknown" values
colSums(df == "NULL" | df == "unknown" | df == "Unknown")

# Identify rows with missing, blank, or placeholder values
# Count blank strings for all columns
colSums(df == " ")

# Quick Summary of the Variables
summary(df)

# Convert date columns to appropriate format
df$Release.Date <- as.Date(df$Release.Date, format = "%Y-%m-%d")
df$Added.At <- as.POSIXct(df$Added.At, format = "%Y-%m-%dT%H:%M:%SZ")

# Numerical summary
summary(select_if(df, is.numeric))



ggplot(df, aes(x = Popularity)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Distribution of Popularity", x = "Popularity", y = "Frequency")

ggplot(df, aes(x = Danceability)) +
  geom_histogram(binwidth = 0.05, fill = "blue", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Distribution of Danceability", x = "Danceability", y = "Frequency")

ggplot(df, aes(x = Tempo)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Distribution of Tempo", x = "Tempo (BPM)", y = "Frequency")

# Correlation matrix for numeric features
numeric_data <- select_if(df, is.numeric)
correlation_matrix <- cor(numeric_data, use = "complete.obs")

# Print correlation matrix
print(correlation_matrix)

# Heatmap of correlations
ggcorrplot(correlation_matrix, lab = TRUE)
