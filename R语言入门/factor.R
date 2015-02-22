settings<-c("High","Medium","Low","Medium","High")
settings<-factor(settings)
settings

g <- c('f','m','m','m','f','m','f','m','f','f')
g


g <- factor(g)
g 


other.g <- factor(c('m','m','m','m','m'),levels=c('f','m'))
other.g


table(g)
table(other.g)


a <- factor(c('adult','adult','juvenile','juvenile','adult','adult',
               'adult','juvenile','adult','juvenile'))


t <- table(a,g)
