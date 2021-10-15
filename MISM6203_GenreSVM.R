## Problem Set 1 - Liam Mahoney

# Question 1 - Vectors & Computations applied

sum=0
for (i in 10:99) {
  sum<-sum+(i^2+i^3)
}
sum

## Another way of computing it would eb to create a data.frame with the vector c(10:99)
## subsequently run a function on it that calcualtes i^2 + i^3 for the data frame, then sum it
I<-10:99
sum(i^2+i^3)

## Question 2 - Flipping a Fair Coin

# Single fair coin toss
sample(c("heads","tails"), size=1, prob=c(.5,5))

# Simulating 100 tosses
count=0
coin <- c("heads","tails")
for (i in 1:100) {
  output1<- sample(coin, size = 1)
  if(output1=="heads")
    count=count+1}
cat(count) # results in 48 instances of heads

## Question 3 - Simulating Random Numbers
sd = 10
avg = 35
x = 25
TestScores=rnorm(x, avg, sd)
TestScores # this produces multiple scores over 0-50

## Question 4 - Working with Character Vectors 
paste("label", 1:30, sep=" ")

## Question 5 - Random Numbers & Histograms ##############

# creating 1,000 simulations
library(ggplot2)
df1 = matrix(runif(20000), 1000, 20)
RanX = rowSums(df1)
hist(df1)
df2 = matrix(x=rnorm(1000))
hist(df2)

## Question 6 - Understanding Vectorized Instructions & Quirkyness of R
1:10 > 5
# You get 5 falses followed by 5 trues, the code is checking if the statement is true or false
# for every number (1-10) in the vector 

## Question 7 - Exploratory Data Analysis #######################

# loading the data set into R 
churn <- read.csv("")