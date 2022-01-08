#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#profit for each month 
 profit <- revenue - expenses
profit

#profit after tax each month 

tax <-  round(profit*0.3,digits=2)
tax
 #profit after tax
ProfitAfterTax <-  profit - tax
ProfitAfterTax

#profit margin after each mouth 
ProfitMargin <- round(ProfitAfterTax / revenue,2)*100
ProfitMargin

#goodmonths
meanPat <- mean(ProfitAfterTax)
meanPat

GoodMonths <- ProfitAfterTax > meanPat
GoodMonths


badMonths <- !GoodMonths 
badMonths
#best month 
bestMonth <- ProfitAfterTax == max(ProfitAfterTax)
bestMonth
#worst month 

WorstMonth <- ProfitAfterTax== min(ProfitAfterTax)
WorstMonth


#units of thousands
revenue.1000 <- round(revenue/1000)
revenue.1000
expenses.1000 <- round(expenses/1000)
expenses.1000
profit.1000 <- round(profit/1000)
profit.1000
ProfitAfterTax.1000 <- round(ProfitAfterTax/1000 ,digits = 7)
ProfitAfterTax.1000

#output
m <- rbind(
  revenue.1000,expenses.1000,profit.1000,ProfitAfterTax.1000,profitMargin,
  GoodMonths,badMonths,bestMonth,WorstMonth
)

m
