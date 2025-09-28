#check the current working directory
getwd()
#set the working directory
setwd("C:\\Users\\User\\Desktop\\IT24104013Lab08")
#importing the dataset
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)

#Q1
#Population Data: Laptop bag weights (kg)
population <- c(
  2.46, 2.45, 2.47, 2.71, 2.46, 2.05, 2.6, 2.42, 2.43, 2.53,
  2.57, 2.85, 2.7, 2.53, 2.28, 2.2, 2.57, 2.89, 2.51, 2.47,
  2.66, 2.06, 2.41, 2.65, 2.76, 2.43, 2.61, 2.57, 2.73, 2.17,
  2.67, 2.05, 1.71, 2.32, 2.23, 2.76, 2.7, 2.13, 2.75, 2.2
)

#Calculate population mean and standard deviation
pop_mean <- mean(population)
pop_sd <- sd(population) * sqrt((length(population)-1)/length(population)) 

cat("Population Mean =", round(pop_mean, 4), "\n")
cat("Population SD =", round(pop_sd, 4), "\n\n")

#Q2
#Draw 25 random samples of size 6 (with replacement)
set.seed(123)  # reproducibility
sample_means <- numeric(25)
sample_sds <- numeric(25)

for(i in 1:25) {
  sample_data <- sample(population, size=6, replace=TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
  
  cat("Sample", i, ": Mean =", round(sample_means[i], 4), 
      " SD =", round(sample_sds[i], 4), "\n")
}

#Q3
#Mean and SD of the 25 sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("\nMean of 25 sample means =", round(mean_of_sample_means, 4), "\n")
cat("SD of 25 sample means =", round(sd_of_sample_means, 4), "\n")

#Relationship with population parameters
cat("\n--- Relationship ---\n")
cat("Mean of sample means ≈ Population Mean (Law of Large Numbers)\n")
cat("SD of sample means ≈ Population SD / sqrt(sample size) (Central Limit Theorem)\n")
