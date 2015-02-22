dat <- c(119,120,131,209,210,337,332,287,146,1
         29,232,169,208,253,142,105,419,179,
         324,287,115,132,308,356,286,221,204,
         105,45,245)
### 查看原始数据的频数直方图
hist(dat, col = "gray")

#生成一个存储器
boot.sample <- list()

## 循环1000次，有放回的抽样，每次生成的
## 新样本存储在boot.sample中
for(i in 1:1000){
     boot.sample[[i]] <- sample(dat,size = 30, replace = TRUE)
}

## 求每个样本的mean,结果为1000个bootstrap样本的mean
boot.mean <- unlist(lapply(boot.sample, mean))

## 频数直方图
hist(boot.mean, col = "gray")

## 求95%的置信区间
CI95 <- quantile(boot.mean, probs = c(0.025, 0.975))

## 在频数直方图上加置信区间
abline(v = CI95, col = "red")