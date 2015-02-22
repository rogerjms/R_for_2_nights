f <- function(x,y) x + y
f <- function(x,y) {x + y}
f(1,2)


#function that accepts a variable number of arguments
v <- c(sqrt(1:100))
f <- function(x,...) {print(x); summary(...)}#Notice that all of the arguments after x were passed to summary.
f("Here is the summary for v.", v, digits=2)

####################################
#“...” is a special type of object in R. The only place
#you can manipulate this object is inside the body of a function. In this context, it means “all
#the other arguments for the function.”
addemup <- function(x,...) {
  args <- list(...)
  for (a in args) x <- x + a
  x
  }
addemup(1, 1)

########函数作为参数
apply.to.three <- function(f) {f(3)}
###匿名函数作为参数
apply.to.three(function(x) {x * 7})

#匿名函数例子，让匿名函数作为参数，会更有效率
a <- c(1, 2, 3, 4, 5)
sapply(a, function(x) {x + 1})

#
# counts the number of odd integers in x
oddcount <- function(x) {
  k <- 0 # assign 0 to k
  if (n %% 2 == 1) k <- k+1 # %% is the modulo operator
  }
  return(k)
  }
oddcount(c(1,3,5))