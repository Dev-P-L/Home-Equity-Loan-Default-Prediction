library(tidyverse)
setwd("E:/12_Data_Science_R/64_Home_Equity_Loan_Default_Prediction")
hmeq <- read.csv("hmeq.csv")
str(hmeq)
head(hmeq)

# How many missing values?
sum(is.na(hmeq))

# How many rows with missing values
df_missing_values <- hmeq[rowSums(is.na(hmeq)) > 0,]
str(df_missing_values)
head(df_missing_values)

# How many missing values in debt-to-income ratio?
sum(is.na(hmeq$DEBTINC))

# How many rows would I miss if I excluded the debt-to-income attribute?
without_DEBTINC <- hmeq %>% select(-DEBTINC)
str(without_DEBTINC)
df_missing_values_2 <- hmeq[rowSums(is.na(without_DEBTINC)) > 0,]
str(df_missing_values_2)
head(df_missing_values_2)
