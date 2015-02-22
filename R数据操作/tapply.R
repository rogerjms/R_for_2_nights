#使用格式为：
#tapply(X, INDEX, FUN = NULL, ..., simplify = TRUE)
#其中X通常是一向量；INDEX是一个list对象，且该list中的每一个元素都是与X有同样长度的因子；FUN是需要计算的函数；simplify是逻辑变量，若取值为TRUE（默认值），且函数FUN的计算结果总是为一个标量值，那么函数tapply返回一个数组；若取值为FALSE，则函数tapply的返回值为一个list对象。需要注意的是，当第二个参数INDEX不是因子时，函数 tapply() 同样有效，因为必要时 R 会用 as.factor()把参数强制转换成因子。
#creating the data set with two categorical variables
##########################
fac <- factor(rep(1:3, length = 17), levels = 1:5)
fac
tapply(1:17, fac, sum)

tapply(1:17, fac, sum, simplify = FALSE)
###########################################

x1 <- runif(16)
x1
cat1 <- rep(1:4, 4)
cat1
cat2 <- c(rep(1, 8), rep(2, 8))
cat2
mat2.df <- data.frame(x1)
names(mat2.df) <- c("x1")
mat2.df$cat1 <- cat1
mat2.df$cat2 <- cat2
mat2.df
tapply(mat2.df$x1, mat2.df$cat1, mean)
tapply(mat2.df$x1, list(mat2.df$cat1, mat2.df$cat2), mean)


