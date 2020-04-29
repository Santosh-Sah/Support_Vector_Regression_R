source("SupportVectorRegressionUtils.R")
library(ggplot2)

supportVectorRegressionDataset = importSupportVectorRegressionDataset("SupportVectorRegression_Position_Salaries.csv")
  
#reading SupportVectorRegression model
supportVectorRegressionModel = readRDS("supportVectorRegressionModel.RDS")


#visualizing SupportVectorRegression result
visualisingSupportVectorRegressionResult <- function(supportVectorRegressionDataset, supportVectorRegressionModel){
  
  ggplot() +
    geom_point(aes(x = supportVectorRegressionDataset$Level, y = supportVectorRegressionDataset$Salary),
               colour = "red") + 
    geom_line(aes(x = supportVectorRegressionDataset$Level, y = predict(supportVectorRegressionModel, 
                                                                               newdata = supportVectorRegressionDataset)),
              color = "blue") +
    ggtitle('Truth or Bluff (Linear Regression)') +
    xlab('Level') +
    ylab('Salary')
  
  ggsave("supportVectorRegressionResult.png")
  
}

#visualizing SupportVectorRegression result for higher resolution and smother curve
visualisingSupportVectorRegressionResultForHigherResolution <- function(supportVectorRegressionDataset, supportVectorRegressionModel){
  
  x_grid = seq(min(supportVectorRegressionDataset$Level), max(supportVectorRegressionDataset$Level), 0.1)
  ggplot() +
    geom_point(aes(x = supportVectorRegressionDataset$Level, y = supportVectorRegressionDataset$Salary),
               colour = 'red') +
    geom_line(aes(x = x_grid, y = predict(supportVectorRegressionModel, newdata = data.frame(Level = x_grid))),
              colour = 'blue') +
    ggtitle('Truth or Bluff (SVR)') +
    xlab('Level') +
    ylab('Salary')
  
  ggsave("SupportVectorRegressionResultForHigherResolution.png")
  
}

visualisingSupportVectorRegressionResult(supportVectorRegressionDataset, supportVectorRegressionModel)
#visualisingSupportVectorRegressionResultForHigherResolution(supportVectorRegressionDataset, supportVectorRegressionModel)