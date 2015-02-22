y <- matrix(1:20, nrow=5, ncol=4)
y
y[3,2]

results <- matrix(c(10,30,40,50,43,56,21,30),2,4,byrow=T)
colnames(results) <- c('1qrt','2qrt','3qrt','4qrt')
rownames(results) <- c('store1','store2')
results
results['store1',]
results['store2',c('1qrt','4qrt')]


m <- matrix(c(45,23,66,77,33,44,56,12,78,23),2,5)
m
m*3
m1 <- matrix(c(45,23,66,77,33,44),2,3)
m1
m2 <- matrix(c(12,65,32,7,4,78),2,3)
m2
m1+m2