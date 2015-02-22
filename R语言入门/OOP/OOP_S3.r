#例子一：通过变量创建S3对象
install.packages("pryr")
library(pryr)
#泛型函数和方法调用
# 用UseMethod()定义teacher泛型函数
teacher <- function(x, ...) UseMethod("teacher")
# 用pryr包中ftype()函数，检查teacher的类型
ftype(teacher)
# 定义teacher内部函数
teacher.lecture <- function(x) print("讲课")
teacher.assignment <- function(x) print("布置作业")
teacher.correcting <- function(x) print("批改作业")
teacher.default<-function(x) print("你不是teacher")
a<-list(name='lili')
# 给老师变量设置行为
attr(a,'class') <- 'correcting'
# 执行老师的行为
teacher(a)
#[1] "讲课"
#查看S3对象的函数
methods(teacher)


#例子二：增加一个print泛型函数的实现
j <- list(name="Joe", salary=55000, union=T)
class(j) <- "employee"
attributes(j) # let's check

print.employee <- function(wrkr) {
cat(wrkr$name,"\n")
cat("salary",wrkr$salary,"\n")
cat("union member",wrkr$union,"\n")
}
print(j)


