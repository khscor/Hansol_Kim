#function constructing
dicefunction=function(r){
  #set initial value, but it'll be not concluded in result
  C=0
    #for loop to repeat
    for (i in 1:r+1){
      #I used sample function
    A=sample(1:6,1)
    B=sample(1:6,1)
    C=c(C,A+B)}
    #discare the initial value
    C[-1]
}
#plottings
plot(dicefunction(10))
plot(dicefunction(100))
plot(dicefunction(10000))

#Drawing thistograms
hist(dicefunction(10))
hist(dicefunction(100))
hist(dicefunction(10000))

#Drawing CDF
plot(ecdf(dicefunction(10)))
plot(ecdf(dicefunction(100)))
plot(ecdf(dicefunction(10000)))

#Drwing Normal Distribution
plot(rnorm(10000))
hist(rnorm(10000),prob=T)

#Finding z scores
zscore=dnorm(70.472,mean=70,sd=5)
zscore
#simply
zscore1=(70.472-70)/5
zscore1
quantile=pnorm(70.472,mean=70,sd=5)
quantile*100

#Normal pdf
#X~N(3,5),Pr(X>1)
1-pnorm(1,mean=3,sd=sqrt(5))


