#Loading data set (I used file.choose)
A=read.csv(file.choose())

#(1)
#Plot a histogram of values of 1999 and 2005
year99=A[A$Year==1999,]
year05=A[A$Year==2005,]
hist(log(year99$Value))
hist(log(year05$Value))

#Hypothesis test for homogenious mean
t.test(log(year99$Value),log(year05$Value))

#(2)
#Apply mean function by tapply to get average precipitation of all countries
B=tapply(A$Value,A$Year,mean)
plot(levels(factor(A$Year)),B,type="l",xlab="Year",ylab="Precipitation",main="Precipitation of all countries over the past years",xlim=c(1990,2010))

