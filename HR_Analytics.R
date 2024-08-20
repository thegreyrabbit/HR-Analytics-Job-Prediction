library(tidyverse)
library(dplyr)
library(ggplot2)

# Load the dataset
df <- read.csv("HR_comma_sep 2.csv")

# Check for duplicate rows
duplicates <- df[duplicated(df), ]
nrow(duplicates)  # Number of duplicate rows

# Remove duplicate rows
df_clean <- df %>% distinct()

# Confirm removal of duplicates
nrow(df_clean)  # Number of rows after removing duplicates
# Save the cleaned dataset
write.csv(df_clean, "HR_cleaned_data.csv", row.names = FALSE)

#-----EDA------
# Summary statistics for numerical columns
summary(df_clean)


# Histogram of satisfaction_level
ggplot(df_clean, aes(x = satisfaction_level)) +
  geom_histogram(binwidth = 0.1, fill = "blue", color = "black") +
  theme_minimal() +
  labs(title = "Distribution of Satisfaction Level", x = "Satisfaction Level", y = "Frequency")

# Histogram of last_evaluation
ggplot(df_clean, aes(x = last_evaluation)) +
  geom_histogram(binwidth = 0.1, fill = "green", color = "black") +
  theme_minimal() +
  labs(title = "Distribution of Last Evaluation", x = "Last Evaluation", y = "Frequency")

# Compute correlation matrix for numerical columns
cor_matrix <- cor(df_clean %>% select_if(is.numeric))

# Visualize the correlation matrix
library(corrplot)
corrplot(cor_matrix, method = "circle", type = "upper", tl.col = "black", tl.srt = 45)


# Proportion of employees who left vs stayed
ggplot(df_clean, aes(x = factor(left))) +
  geom_bar(fill = "orange") +
  theme_minimal() +
  labs(title = "Employee Attrition", x = "Left (0 = No, 1 = Yes)", y = "Count")

# Boxplot of satisfaction level by attrition
ggplot(df_clean, aes(x = factor(left), y = satisfaction_level)) +
  geom_boxplot(fill = "lightblue") +
  theme_minimal() +
  labs(title = "Satisfaction Level by Employee Attrition", x = "Left (0 = No, 1 = Yes)", y = "Satisfaction Level")

# Average satisfaction level by department
ggplot(df_clean, aes(x = Department, y = satisfaction_level)) +
  geom_boxplot(fill = "purple") +
  theme_minimal() +
  labs(title = "Satisfaction Level by Department", x = "Department", y = "Satisfaction Level") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Attrition rate by department
ggplot(df_clean, aes(x = Department, fill = factor(left))) +
  geom_bar(position = "fill") +
  theme_minimal() +
  labs(title = "Attrition Rate by Department", x = "Department", y = "Proportion", fill = "Left (0 = No, 1 = Yes)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Department-wise analysis
# Average satisfaction level by department
ggplot(df_clean, aes(x = Department, y = satisfaction_level)) +
  geom_boxplot(fill = "purple") +
  theme_minimal() +
  labs(title = "Satisfaction Level by Department", x = "Department", y = "Satisfaction Level") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Attrition rate by department
ggplot(df_clean, aes(x = Department, fill = factor(left))) +
  geom_bar(position = "fill") +
  theme_minimal() +
  labs(title = "Attrition Rate by Department", x = "Department", y = "Proportion", fill = "Left (0 = No, 1 = Yes)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Salary analysis
# Attrition by salary level
ggplot(df_clean, aes(x = salary, fill = factor(left))) +
  geom_bar(position = "fill") +
  theme_minimal() +
  labs(title = "Attrition Rate by Salary Level", x = "Salary Level", y = "Proportion", fill = "Left (0 = No, 1 = Yes)")

# Satisfaction by salary level
ggplot(df_clean, aes(x = salary, y = satisfaction_level, fill = salary)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Satisfaction Level by Salary Level", x = "Salary Level", y = "Satisfaction Level")

# Create a bar plot to show attrition by department
ggplot(df_clean, aes(x = Department, fill = factor(left))) +
  geom_bar(position = "fill") +
  theme_minimal() +
  labs(title = "Attrition Rate by Department", x = "Department", y = "Proportion", fill = "Left (0 = No, 1 = Yes)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))