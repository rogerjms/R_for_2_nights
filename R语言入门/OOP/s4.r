setClass("employee",representation(name="character",salary="numeric",union="logical"))
joe <- new("employee",name="Joe",salary=55000,union=T)
joe@salary
slot(joe,"salary")
joe@salary <- 65000
#实现泛型函数show
setMethod("show", "employee",
function(object) {
inorout <- ifelse(object@union,"is","is not")
cat(object@name,"has a salary of",object@salary,
"and",inorout, "in the union", "\n")
}
)
show(joe)