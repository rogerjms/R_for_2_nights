 #赋值
 mychar <- c("ACTACCACTAACCACT","TCATCCATTCGTGGG","GTTGTTCCATAG")
 #获取字串长度
 nchar(mychar)
#[1] 16 15 12
 length(mychar)
#[1] 3
 #截取
 substr(mychar, 2, 4)
#[1] "CTA" "CAT" "TTG"
 substr(mychar, 2, 4)<-"TTT"
 mychar
#[1] "ATTTCCACTAACCACT" "TTTTCCATTCGTGGG"  "GTTTTTCCATAG"    
 #替换
 dna2rna<-function(inputStr){
 	if(!is.character(inputStr))
 		stop("need character input")
 	is = toupper(inputStr)
 	chartr("T", "U", is)
 }
 dna2rna(mychar)
#[1] "AUUUCCACUAACCACU" "UUUUCCAUUCGUGGG"  "GUUUUUCCAUAG"    
 #联接
 paste("prefix",mychar,"postfix",sep="-")
#[1] "prefix-ATTTCCACTAACCACT-postfix" "prefix-TTTTCCATTCGTGGG-postfix"  "prefix-GTTTTTCCATAG-postfix"    
 paste(mychar,collapse="--")
#[1] "ATTTCCACTAACCACT--TTTTCCATTCGTGGG--GTTTTTCCATAG"
 #分割
 strsplit(mychar,"C")
#[[1]]
#[1] "ATTT" ""     "A"    "TAA"  ""     "A"    "T"   
 
#[[2]]
#[1] "TTTT"  ""      "ATT"   "GTGGG"
 
#[[3]]
#[1] "GTTTTT" ""       "ATAG"  
 
 strsplit(mychar,"[CG]")
#[[1]]
#[1] "ATTT" ""     "A"    "TAA"  ""     "A"    "T"   
 
#[[2]]
#[1] "TTTT" ""     "ATT"  ""     "T"    ""     ""    
 
#[[3]]
#[1] ""      "TTTTT" ""      "ATA"  
 
 #比较
mychar[1]>mychar[2]
#[1] FALSE
 #排序
 sort(mychar)
#[1] "ATTTCCACTAACCACT" "GTTTTTCCATAG"     "TTTTCCATTCGTGGG" 