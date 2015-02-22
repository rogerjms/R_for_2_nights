#Returns a vector or array or list of values obtained by applying a function to margins of an array or matrix. 
## Compute row and column sums for a matrix:
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
dimnames(x)[[1]] <- letters[1:8]
#1 stands for row,2 stands for column
apply(x, 2, mean)
col.sums <- apply(x, 2, sum)
row.sums <- apply(x, 1, sum)


mat1 <- matrix(rep(seq(4), 4), ncol = 4)
mat1
apply(mat1, 1, sum)
apply(mat1, 2, sum)
#using a user defined function
sum.plus.2 <- function(x){
	sum(x) + 2
}
apply(mat1, 1, sum.plus.2)
