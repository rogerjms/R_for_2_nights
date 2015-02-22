#有些像三目运算符
a <- c("a", "a", "a", "a", "a")
b <- c("b", "b", "b", "b", "b")
ifelse(c(TRUE, FALSE, TRUE, FALSE, TRUE), a, b)


#定义函数
switcheroo.if.then <- function(x) {
if (x == "a")
"camel"
else if (x == "b")
"bear"
else if (x == "c")
"camel"
else
"moose"
}

#调用函数
switcheroo.if.then("a")
switcheroo.if.then("f")