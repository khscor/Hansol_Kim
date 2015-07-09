#Histogram of generated uniform distribution random number
hist(runif(1000)*10,main="")
#settiing slot
means <- numeric(1000)
for (i in 1:1000){
  means[i] <- mean(runif(5)*10)
} 
#clt result
hist(means)
mean(means)
sd(means)
#Normal Distribution
x <- seq(0,10,0.1)
y <- dnorm(x,mean=mean(means),sd=sd(means))
lines(x,y)
