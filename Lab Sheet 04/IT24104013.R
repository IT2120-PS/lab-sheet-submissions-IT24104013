#1)
setwd("C:\\Users\\it24104013\\Desktop\\Lab4")
branch_data<-read.table("Exercise.txt", header = TRUE, sep = ",")

#2)
str(branch_data)
summary(branch_data$Sales_X1)

#3)
boxplot(branch_data$Sales_X1, main = "Boxplot for Sales", ylab = "Sales")

#4)
quantile(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#5)
get.outliers<-function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  lb <- q1 - 1.5*iqr
  
  outliers<-z[z<lb | z>ub]
  
  return(outliers)
}

get.outliers(branch_data$Years_X3)