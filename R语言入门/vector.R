a = c(1,2,3,4,5)
a
sum(a)
b = c("one", "two", "three")
b
c = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE) 
c

d=rep(2,times=4) 
d

e=seq(from=3, to=21, by=3 )
e

f=c(1:10)
f

# 向量元素引用的例子
intake.pre <- c(5260, 5470, 5640, 6180, 6390, 6515, 6805, 7515, 7515, 8230, 8770)
intake.post <- c(3910, 4220, 3885, 5160, 5645, 4680, 5265, 5975, 6790, 6900, 7335)
intake.pre[5];           #引用第5个元素
intake.pre[c(3,5,7)]     #引用第3，5，7个元素
v <- c(3,5,7); 
intake.pre[v]; 
intake.pre[1:5];         #引用第1到5个元素
intake.pre[-c(3,5,7)]    #去除第3，5，7元素
