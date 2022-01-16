


Stats <-  read.csv(file.choose())
Stats
nrow(Stats)
ncol(Stats)
head(Stats)
tail(Stats)
str(Stats)

#---------------------------- using $ sign 
Stats[2,2]
Stats[3,"Birth.rate"]
Stats$Internet.users
Stats$Internet.users[2]
levels(Stats$Income.Group)

#----------------------------------Basic opration with DF
Stats[1:10,]
Stats[3:9,]
Stats[c(4,100),]
is.data.frame( Stats[1,])
is.data.frame(Stats[,1,drop=F]) 
Stats[,2,drop=F]

head(Stats)
Stats$Birth.rate * Stats$Internet.users
Stats[,3,drop=F] * Stats[,4,drop=F]
Stats[,3,drop=F] + Stats[,4,drop=F]

#add colum 

Stats$MyCalc
head(Stats)

#remove colum 
Stats$MyCalc <- NULL
head(Stats)

#-------------------------Filtering Data Frames

filter <- Stats$Internet.users < 2
Stats[filter,]
filter

Stats[Stats$Birth.rate >40,]
Stats[Stats$Birth.rate >40 & Stats$Internet.users <2,]
Stats[Stats$Income.Group == "High income",]
Stats[1,]
Stats[Stats$Country.Name == "Malta",]




#------------------------- Introduction Qplot

install.packages("ggplot2")
library(ggplot2)

nation <- function(data = Stats){
  qplot(data,x=Internet.users)
}
nation(Stats)
qplot(data=Stats,x=Internet.users)
qplot(data = Stats , x=Income.Group, y=Birth.rate , size =I(3))
qplot(data = Stats , x=Income.Group, y=Birth.rate , size =I(3),colour=I("blue"))
qplot(data = Stats , x=Income.Group, y=Birth.rate , geom = "boxplot")


#------------------------- Visualizing what we need 

qplot(data= Stats, x=Internet.users , y=Birth.rate, size=I(3), colour= Income.Group)


#-------------------------creating data frame 
mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset,Regions_2012_Dataset)

head(mydf)

colnames(mydf) <- c( "Country" , "Code", "Region")

head(mydf)


#---------------- merging data frame 

head(Stats)
head(mydf)

merged <- merge(Stats,mydf,by.x="Country.Code",by.y="Code")
head(merged)
merged$Country <- NULL
str(merged)

#------------------------visualizing with new data 


qplot(data= merged, x=Internet.users,y=Birth.rate)
qplot(data = merged, x=Internet.users,y=Birth.rate,colour = Region)
qplot(data = merged, x=Internet.users,y=Birth.rate,colour = Region, size=I(3),shape=I(14))

#Title 
qplot(data = merged, x=Internet.users,y=Birth.rate,colour = Region, size=I(3),shape=I(14)
      ,main=("Birth rate vs Internet users"))



