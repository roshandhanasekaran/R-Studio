myPlot <- function(data,rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft", inset= 0.0000001, legend =Players[rows] ,col =c(1:4,6), pch = 15:18, horiz = F )
  
}

myPlot(FreeThrows)
myPlot(FreeThrowAttempts)
myPlot(FreeThrowAttempts/Games)
myPlot(FreeThrows/FreeThrowAttempts)
myPlot(FieldGoals/FieldGoalAttempts)
myPlot((Points-FreeThrows)/ FieldGoals)

?matplot
