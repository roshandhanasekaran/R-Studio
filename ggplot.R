 files <- read.csv(file.choose())
head(files)
colnames(files) <- c("Film", "Genre","criticRating", "AudinceRating","BudgetMillon","YearOfRelease")
head(files)
str(files)
summary(files)

factor(files$YearOfRelease)
files$YearOfRelease <- factor(files$YearOfRelease)
summary(files)

#------------------------Aesthetics
library(ggplot2)
ggplot(data=files ,aes(x=criticRating,y=AudinceRating))
ggplot(data=files ,aes(x=criticRating,y=AudinceRating))+ geom_point()

#addColour

ggplot(data=files ,aes(x=criticRating,y=AudinceRating, colour=Genre))+ geom_point() 



#size
P <- ggplot(data=files ,aes(x=criticRating,y=AudinceRating, colour=Genre, size=BudgetMillon)) 
p
P + geom_point() + geom_smooth()


q <- ggplot(data=files ,aes(x=criticRating,y=AudinceRating, colour=Genre, size=BudgetMillon)) 
q
q+geom_point(aes(size=criticRating,colour=BudgetMillon))

r <- ggplot(data=files, aes(x=criticRating,y=AudinceRating, colour=Genre, size=BudgetMillon)) 
r+geom_point(aes(color=Genre))

r+geom_point(colour="DarkGreen")

#mapping
r+geom_point(aes(size=BudgetMillon))
#setting
r+geom_point(size=10)



#----------------------Histogram and destiny charts 

s <- ggplot(data=files, aes(x=BudgetMillon)) 
s+geom_histogram(binwidth = 10,aes(fill=Genre),colour="black")


t <- ggplot(data=files ,aes(x=AudinceRating))
t+geom_histogram(binwidth = 10
                 ,fill="White",colour="Blue")

t <- ggplot(data=files)
t+geom_histogram(binwidth = 10,aes(x=AudinceRating)
                 ,fill="White",colour="Blue") 

u <- ggplot(data=files,aes(x=criticRating , y=AudinceRating, colour=Genre))

u + geom_point() +geom_smooth(fill=NA)
head(files)

v <- ggplot(data=files, aes(x=BudgetMillon,))
v+geom_histogram(binwidth=10,aes(fill=Genre),color="black")
#----------------------------------Facets

v <- ggplot(data=files, aes(x=BudgetMillon,))
v+geom_histogram(binwidth=10,aes(fill=Genre),color="black")+
facet_grid(Genre~.,scales="free")


w <- ggplot(data=files, aes(x=criticRating,y=AudinceRating,colour=Genre))
w+geom_point(size=3)+facet_grid(Genre~.)


w <- ggplot(data=files, aes(x=criticRating,y=AudinceRating,colour=Genre))
w+geom_point(size=3)+facet_grid(Genre~YearOfRelease)+geom_smooth()


m <- ggplot(data=files, aes(x=criticRating, y=AudinceRating,size=BudgetMillon,colour=Genre))
m+geom_point()+xlim(50,100) +ylim(50,100)


#zoom
v <- ggplot(data=files, aes(x=BudgetMillon,))
v+geom_histogram(binwidth=10,aes(fill=Genre),color="black") + coord_cartesian(ylim=c(0,50))

