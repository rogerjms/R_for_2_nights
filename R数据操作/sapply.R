mat1 <- matrix(rep(seq(4), 4), ncol = 4)
mat1
mat1.df <- data.frame(mat1)
mat1.df
y2 <- sapply(mat1.df, function(x, y) sum(x) + y, y = 5)
y2
is.vector(y2)
