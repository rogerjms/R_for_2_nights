###################################################
### Creating New Functions
###################################################

se <- function(x) {
   v <- var(x)
   n <- length(x)
   return(sqrt(v/n))
}


se(c(45,2,3,5,76,2,4))


basic.stats <- function(x,more=F) {
   stats <- list()
 
   clean.x <- x[!is.na(x)]
 
   stats$n <- length(x)
   stats$nNAs <- stats$n-length(clean.x)
 
   stats$mean <- mean(clean.x)
   stats$std <- sd(clean.x)
   stats$med <- median(clean.x)
   if (more) {
     stats$skew <- sum(((clean.x-stats$mean)/stats$std)^3)/length(clean.x)
     stats$kurt <- sum(((clean.x-stats$mean)/stats$std)^4)/length(clean.x) - 3
   }
   unlist(stats)
}


basic.stats(c(45,2,4,46,43,65,NA,6,-213,-3,-45))
basic.stats(c(45,2,4,46,43,65,NA,6,-213,-3,-45),more=T)



f <- function(x) {
  for(i in 1:10) {
    res <- x*i
    cat(x,'*',i,'=',res,'\n')
  }
}