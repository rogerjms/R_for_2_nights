#lapply returns a list of the same length as X, each element of which is the result of applying FUN to the corresponding element of X
x <- list(a = 1:10, beta = c(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
# compute the list mean for each list element
lapply(x, mean)



mat1 <- matrix(rep(seq(4), 4), ncol = 4)
mat1
mat1.df <- data.frame(mat1)
mat1.df
is.list(mat1.df)
lapply(mat1.df, sum)
y <- lapply(mat1.df, sum)
is.list(y)
