#wine = read.csv("http://www.nd.edu/~mclark19/learn/data/goodwine.csv")
wine = read.csv("goodwine.csv")
summary(wine)
library(doSNOW)
registerDoSNOW(makeCluster(3, type = "SOCK"))#You can set up R
#for parallel processing with the following code, which will allow caret
#to allot tasks to three cores simultaneously31.
#特征选取,去除共线性问题
library(corrplot)
corrplot(cor(wine[, -c(13, 15)]), method = "number", tl.cex = 0.5)#检查共线性
#数据集分块
library(caret)
set.seed(1234) #so that the indices will be the same when re-run
trainIndices = createDataPartition(wine$good, p = 0.8, list = F)
wine_train = wine[trainIndices, -c(6, 8, 12:14)] #remove quality and color, as well as density and others
wine_test = wine[!1:nrow(wine) %in% trainIndices, -c(6, 8, 12:14)]
#特征缩放，不是必须的,因为在最后的training中自然会处理
wine_trainplot = predict(preProcess(wine_train[, -10], method = "range"), wine_train[,-10])
featurePlot(wine_trainplot, wine_train$good, "box")
#KNN方法
cv_opts = trainControl(method="cv", number=10)
knn_opts = data.frame(.k=c(seq(3, 11, 2), 25, 51, 101)) #odd to avoid ties
results_knn = train(good~., data=wine_train, method="knn",
preProcess="range", trControl=cv_opts,
tuneGrid = knn_opts)
results_knn
preds_knn = predict(results_knn, wine_test[,-10])
confusionMatrix(preds_knn, wine_test[,10], positive='Good')
dotPlot(varImp(results_knn))

#神经网络，太耗时可以修改
results_nnet = train(good~., data=wine_train, method="avNNet",
trControl=cv_opts, preProcess="range",
tuneLength=5, trace=F, maxit=1000)
results_nnet
#nnet
results_nnet = train(good~., data=wine_train, method="nnet",
trControl=cv_opts, preProcess="range",
tuneLength=2, trace=F, maxit=10)
results_nnet
preds_nnet = predict(results_nnet, wine_test[,-10])
confusionMatrix(preds_nnet, wine_test[,10], positive='Good')


#随机森林
set.seed(1234)
rf_opts = data.frame(.mtry=c(2:6))
results_rf = train(good~., data=wine_train, method="rf",
preProcess='range',trControl=cv_opts, tuneGrid=rf_opts,
n.tree=1000)
results_rf
#how many variables to make available for consideration at each
#split, and this is the tuning parameter of consequence here in our use
#of caret (called ’mtry’)
preds_rf = predict(results_rf, wine_test[,-10])
confusionMatrix(preds_rf, wine_test[,10], positive='Good')

#svm
set.seed(1234)
results_svm = train(good~., data=wine_train, method="svmLinear",
preProcess="range", trControl=cv_opts, tuneLength=5)
results_svm
#sigma: rbf核函数的参数，用于生成高维的特征，常用的有几种核函数，如径向核函数，线性核函数，这个也需要凭经验来选择。
#C：惩罚因子。在最优化函数中，对离群点的惩罚因子，也是对离群点的重视程度体现。这个也是凭经验和实验来选择。
preds_svm = predict(results_svm, wine_test[,-10])
confusionMatrix(preds_svm, wine_test[,10], positive='Good')

