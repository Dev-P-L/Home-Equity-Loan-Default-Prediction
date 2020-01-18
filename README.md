# Home_Equity_Loan_Default_Prediction
Dataset from Kaggle
Dataset description: 1 label (default or no default) and 12 predictors
Dataset manipulations: 
- observations with missing values have been discarded (would introduce some randomness very difficult to justify);
- the dataset has been split into three subsets, at random on the target variable (label);
- the first subset is the training set;
- the second subset is the test set: it will be extensively used to check efficacy of models fitted on the training set and applied on the test set for prediction; this test set cannot be used to evaluate the performance of the models since the models are progessively adjusted to both the training set and the test set; consequently, we nee a validation set;
- the validation set will only be used at the very last step of the whole process, when results on the test set are considered satisfactory.
Objective: predict default on home equity loans; more specifically, determine a model that reaches 

