x<-c(97,93,85,74,32,100,99,67)
sort(x)
order(x)
rank(x)
order(x)[sort(x)>50&sort(x)<90]



x <- swiss$Education[1:25]
x; 
sort(x); 
sort(x, partial = c(10, 15))

#sort dataframe
y<-data.frame(a=c("def","ab","zzzz"),b=c(2,5,1))
r <- order(y$b)
z <- y[r,]
z

