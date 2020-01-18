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

# How many rows with missing values would I still miss 
# if I excluded the debt-to-income attribute?
without_DEBTINC <- hmeq %>% select(-DEBTINC)
str(without_DEBTINC)
df_missing_values_2 <- hmeq[rowSums(is.na(without_DEBTINC)) > 0,]
str(df_missing_values_2)
head(df_missing_values_2)

# Number of missing values in each attribute
vector <- apply(hmeq, 2, is.na)
vector_2 <- apply(vector, 2, sum)
vector_2
class(vector_2)
sum(vector_2)

# Conclusion
# 1. Important number of missing values: 4740
# 2. If I exclude all rows with at least one missing value,
#    then I exclude 2445 rows. 
# 3. The attribute with the most missing values is DEBTINC: 1267
# 4. It is impossible to discard DEBTINC because it is most relevant
# 5. Even if we discarded DEBTINC, we would still have 1522 rows  
#    with missing values. 
# 6. All predictors seem relevant.
# 7. Imputation would seem ungrounded and might even compromise
#    the relevancy of a model.
# 8. Consequently, we will discard all lines with at least one missing value.


