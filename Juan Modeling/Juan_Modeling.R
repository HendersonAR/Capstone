library(Hmisc)
library(dplyr)
library(car)
library(corrplot)

#Loading dataset and exclusing some variables.
df <- read.csv("transfer_dataset.csv")

predictors <- df %>%
  select(-player, -season)

#Running the model
model <- glm(transfer ~ ., data = predictors, family = binomial)
summary(model)


#Multicollinearity Check with VIF
vif_model <- lm(transfer ~ ., data = predictors)
vif(vif_model)

#Correlation Matrix
cor_matrix <- rcorr(as.matrix(predictors)) 
cor_matrix_res <- round(as.data.frame(cor_matrix$r), 3)
cor_matrix_res


#Heatmap for Correlation Matrix
corrplot(cor_matrix$r, method = "color", type = "lower",
         tl.cex = 0.7, number.cex = 0.7, tl.col = "black")


#Finding highly correlated variable pairs
cor_mat <- cor_matrix$r
high_corr <- which(abs(cor_mat) > 0.8 & abs(cor_mat) < 1, arr.ind = TRUE)

cor_pairs <- data.frame(
  Var1 = rownames(cor_mat)[high_corr[, 1]],
  Var2 = colnames(cor_mat)[high_corr[, 2]],
  Correlation = round(cor_mat[high_corr], 3)
)

#Remove duplicates
cor_pairs <- cor_pairs[cor_pairs$Var1 < cor_pairs$Var2, ]
cor_pairs

#Removing some highly correlated variables
predictors <- predictors %>%
  select(-matches_played, 
         -Total_Passes_Leading_to_Shot, 
         -Shot_Creating_Actions)

#Run model again
glm_model_clean <- glm(transfer ~ ., data = predictors, family = binomial)
summary(glm_model_clean)

