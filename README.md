# Home_Equity_Loan_Default_Prediction

<br>

## Files

- hmeq_Final_Report.html is the final report in this project.
- hmeq_Script.Rmd contains the code.
- hmeq.csv contains the dataset.
- Attribute_Description.csv is a succinct description of all attributes.

* Wishing to visualize hmeq_Final_Report.html?

  * You could open it in GitHub Desktop.

  * Alternatively, you could use the URL https://rawcdn.githack.com/Dev-P-L/Home-Equity-Loan-Default-Prediction/95a8f9cb17f2fa06e10916c16370d67ce3b39c8d/hmeq_Final_Report.html which, when activated, delivers hmeq_Final_Report.html to the browser with the correct Content-Type headers. The URL has been obtained by introducing the GitHub URL of hmeq_Final_Report.html into https://raw.githack.com/ , as suggested in https://stackoverflow.com/questions/6551446/can-i-run-html-files-directly-from-github-instead-of-just-viewing-their-source .

  * Alternatively again, you could knit hmeq_Script.Rmd or ask me by email for a copy of hmeq_Final_Report.html.

<br>

## Executive Summary

Welcome to this data science project dedicated to default prediction on home equity loans. Data have been downloaded from the Kaggle website: https://www.kaggle.com/ajay1735/hmeq-data . Two avenues of modeling have been opened up due to predictor information being missing in approximately 2,500 observations out of 6,000, as evidenced in data profiling.

On the first hand, the subset with complete information has been dealt with in machine learning in a multi-tier process: pre-testing 21 algorithms such as eXtreme Gradient Boosting, Stochastic Gradient Boosting or Monotone Multi-Layer Perceptron Neural Network; preselecting 6 of them according to performance metrics for the standard 0.5 probability threshold; fine_tuning probability threshold on a broad range of thresholds and selecting 3 algorithms, i.e. AdaBoost Classification Trees and 2 Random Forests algorithms; combining them into an ensemble model by majority vote and eventually on the basis of the average probabilities.

On the other hand, the subset with incomplete predictor information has been dealt with separately in machine learning by utilizing the relation between missing information and default rate, which had been evidenced in the exploratory data analysis.

The dual validation process delivered global performance metrics of 84 % sensitivity and 61 % precision on the global validation set, which largely exceeded the global target of 75-50.

The whole machine learning model could be rather easily parameterized, in e.g. a dashboard, to aim at different trade-offs between sensitivity and precision. We leave this promising avenue of research to the future.

<br>

## TAGS
machine learning, classification, missing values, eXtreme Gradient Boosting, AdaBoost Classification Trees, Random Forests, probability threshold, ensemble models, recall-precision curves, R; home equity loans, finance, banking

