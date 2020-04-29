importSupportVectorRegressionDataset <- function(supportVectorRegressionDatasetFileName) {
  
  #importing dataset
  #dataset is very small and hence we are not going to split into training and testing set
  supportVectorRegressionDataset = read.csv(supportVectorRegressionDatasetFileName)
  
  supportVectorRegressionDataset = supportVectorRegressionDataset[2:3]
  
  return (supportVectorRegressionDataset)
  
}

#Save SupportVectorRegressionModel
saveSupportVectorRegressionModel <- function(supportVectorRegressionModel) {
  
  saveRDS(supportVectorRegressionModel, file = "supportVectorRegressionModel.RDS")
}
