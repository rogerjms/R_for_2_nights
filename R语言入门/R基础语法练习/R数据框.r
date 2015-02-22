###################################################
### Data Frames
###################################################
my.dataset <- data.frame(site=c('A','B','A','A','B'),
 season=c('Winter','Summer','Summer','Spring','Fall'),
 pH = c(7.4,6.3,8.6,7.2,8.9))


my.dataset[3,2]


my.dataset$pH


my.dataset[my.dataset$pH > 7,]
my.dataset[my.dataset$site == 'A','pH']
my.dataset[my.dataset$season == 'Summer',c('site','pH')]


attach(my.dataset)
my.dataset[site == 'B',]
season


subset(my.dataset,pH > 8)
subset(my.dataset,season == 'Summer',season:pH)


my.dataset[my.dataset$season == 'Summer','pH'] <- 
     my.dataset[my.dataset$season == 'Summer','pH'] + 1


my.dataset$NO3 <- c(234.5,256.6,654.1,356.7,776.4)
my.dataset


nrow(my.dataset)
ncol(my.dataset)


names(my.dataset)
names(my.dataset) <- c("area","season","pH","NO3" )
my.dataset


names(my.dataset)[4] <- "PO4"
my.dataset