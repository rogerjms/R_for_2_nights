#Sys.setenv(HADOOP_HOME="/usr/local/hadoop")
#Sys.setenv("HADOOP_CMD"="/usr/local/hadoop/bin/hadoop")
#Sys.setenv("HADOOP_STREAMING"="/usr/local/hadoop/contrib/streaming/hadoop-streaming-1.2.1.jar")
library(rmr2)
library(rhdfs)
library(stringr)
hdfs.init()
data<-read.table(file="mail.txt")#本地读入要处理的数据
d0<-to.dfs(keyval(1, data))
from.dfs(d0)
#计算邮箱域出现了多少次
mr<-function(input=d0){
map<-function(k,v){
keyval(word(as.character(v$V1), 2, sep = fixed('@')),1)
}
reduce =function(k, v ) {
keyval(k, sum(v))
}
d1<-mapreduce(input=input,map=map,reduce=reduce,combine=TRUE)
}
d1<-mr(d0)
from.dfs(d1)
#按次数从大到小排序
sort<-function(input=d1){
map<-function(k,v){
keyval(1,data.frame(k,v))
}
reduce<-function(k,v){
v2<-v[order(as.integer(v$v),decreasing=TRUE),]
keyval(1,v2)
}
d2<-mapreduce(input=input,map=map,reduce=reduce,combine=TRUE)
}
d2<-sort(d1)
result<-from.dfs(d2)
result$val


