#while循环
i <- 5
while (i <= 25) {print(i); i <- i + 5}

#for循环
for (i in seq(from=5, to=25, by=5)) print(i)
x <- c(5,12,13)
for (n in x) print(n^2)

#repeat
i=5
repeat{if(i>25) break else print(i); i=i+5;}