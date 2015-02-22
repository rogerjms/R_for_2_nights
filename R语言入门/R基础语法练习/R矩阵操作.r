###################################################
### Matrices
###################################################
m <- c(45,23,66,77,33,44,56,12,78,23)
m
dim(m) <- c(2,5)
m


m <- matrix(c(45,23,66,77,33,44,56,12,78,23),2,5)


m <- matrix(c(45,23,66,77,33,44,56,12,78,23),2,5,byrow=T)
m


m[2,3]


m[-2,1]
m[1,-c(3,5)]


m[1,]
m[,4]


m[1,,drop=F]
m[,4,drop=F]


m1 <- matrix(c(45,23,66,77,33,44,56,12,78,23),2,5)
m1
cbind(c(4,76),m1[,4])
m2 <- matrix(rep(10,20),4,5)
m2
m3 <- rbind(m1[1,],m2[3,])
m3


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