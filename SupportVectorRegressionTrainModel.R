source("SupportVectorRegressionUtils.R")

#install.packages ("e1071", dependencies = TRUE)
library(e1071)

#reading dataset
supportVectorRegressionDataset = importSupportVectorRegressionDataset("SupportVectorRegression_Position_Salaries.csv")
  
# Fitting SupportVectorRegression dataset
supportVectorRegression = svm(formula = Salary ~ .,
                              data = supportVectorRegressionDataset, 
                              type = "eps-regression")

#saving SupportVectorRegression model
saveSupportVectorRegressionModel(supportVectorRegression)

supportVectorRegressionDataset