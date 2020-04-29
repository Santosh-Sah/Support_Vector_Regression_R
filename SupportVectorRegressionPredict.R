source("SupportVectorRegressionUtils.R")

#reading SupportVectorRegression model
supportVectorRegressionModel = readRDS("supportVectorRegressionModel.RDS")

inputValue<- data.frame(Level = 6.5)

#predicting new data
predictedValues = predict(supportVectorRegressionModel, newdata = inputValue)

predictedValues #330378.8

