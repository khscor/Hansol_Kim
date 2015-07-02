#Loading dataset
data=read.csv(file.choose())
head(data)

#Editing column name
colnames(data)[1]="Country"

#Discarding useless information
data=data[-(724:725),-c(2,4,6)]

#Plotting World solar electricity quantity
ymean=tapply(data$Quantity,data$Year,mean)
plot(levels(factor(data$Year)),ymean,type="l",ylab="Quantity of Solar Electricity",xlab="Year",main="World Solar Electricity Quantity",xlim=c(1990,2012),ylim=c(0,2000))

#Looking up the difference between Korea and US
korea=data[data$Country=="Korea, Republic of",]
us=data[data$Country=="United States",]
hist(korea$Quantity)
hist(us$Quantity)
t.test(korea$Quantity,us$Quantity)
