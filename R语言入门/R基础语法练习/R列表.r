###################################################
### Lists
###################################################
my.lst <- list(stud.id=34453, 
                stud.name="John", 
                stud.marks=c(14.3,12,15,19))


my.lst


my.lst[[1]]
my.lst[[3]]


my.lst[1]


mode(my.lst[1])
mode(my.lst[[1]])


my.lst$stud.id


names(my.lst)
names(my.lst) <- c('id','name','marks')
my.lst


my.lst$parents.names <- c("Ana","Mike")
my.lst


length(my.lst)


my.lst <- my.lst[-5]


other <- list(age=19,sex='male')
lst <- c(my.lst,other)
lst


unlist(my.lst)
