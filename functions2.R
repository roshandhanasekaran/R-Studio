


install.packages("ggplot2")

?ggplot()

diamonds

library(ggplot2)
?ggplot2()

qplot(data=diamonds, carat,price,colour=clarity,facets =~clarity)
