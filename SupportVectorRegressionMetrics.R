source("SupportVectorRegressionUtils.R")

#reading SupportVectorRegression model
supportVectorRegressionModel = readRDS("supportVectorRegressionModel.RDS")

summary(supportVectorRegressionModel)

# Call:
#   lm(formula = Salary ~ ., data = polynomialRegressionDataset)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max
# -170818 -129720  -40379   65856  386545
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)  -195333     124790  -1.565  0.15615
# Level          80879      20112   4.021  0.00383 **
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 182700 on 8 degrees of freedom
# Multiple R-squared:  0.669,     Adjusted R-squared:  0.6277
# F-statistic: 16.17 on 1 and 8 DF,  p-value: 0.003833
