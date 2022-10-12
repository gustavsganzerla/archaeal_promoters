df <- read.csv("~/Documents/arp/classification/promoters_vs_shuffled.csv")

library(tidyverse)
library(caret)

control <- trainControl(method="cv", number=5)
metric <- "Accuracy"



##CART
set.seed(7)
fit.cart1 <- train(as.factor(label)~., data=df, method="rpart", metric=metric, trControl=control)

##KNN
set.seed(7)
fit.knn <- train(as.factor(label)~., data=df, method="knn", metric=metric, trControl=control)

##LDA
set.seed(7)
fit.svm <- train(as.factor(label)~., data=df, method="lda", metric=metric, trControl=control)

##SVM
set.seed(7)
fit.svm <- train(as.factor(label)~., data=df, method="svmRadial", metric=metric, trControl=control)

##RF
set.seed(7)
fit.rf <- train(as.factor(label)~., data=df, method="rf", metric=metric, trControl=control)


