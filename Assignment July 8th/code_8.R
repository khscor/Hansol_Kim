


#assignment
#1
#data 
data=c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)
#1-a.
#sample mean
xbar=mean(data)

#What does quantity means?
#-> That quantity means estimated population mean.

#1-b.
# One sample T-test 
t.test(data)

#=> Since p-value is lesser than 0.05, we could reject H0(=sample mean is equal to population mean).

#1-c. 
#Standard error for sample estimate
SE<-sd(data)/sqrt(length(data))




#1-d.
#What does quantity means?
#=>The standard error is the standard deviation of the sampling distribution of statistic, most commonly of the mean.

#1-e.
#Confidential interval

#->(88.15754, 96.24246)

#1-f.
#What does quantity means?
#In statistics, a confidence interval is a type of interval estimate of a population parameter. It is an observed interval, in principle different from sample to sample, that frequently the value of an unobservable parameter of interest if the experiment is repeated. Therefore (88.15754, 96.24246) interval could include the population mean 95%.  

#2
male=c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
female=c(223.4,221.5,230.2,224.3,223.8,230.8)

mean(male)
sd(male)
mean(female)
sd(female)

t.test(male,female,var.equal=T)

#3
#a. We do not have any idea of the size of effect of the treatment from this test. We only have information whether this treatment has an effect.
#b. We can reject the null hypothesis in a significance level of 5%, so this treatment has some effect.
#c. This is a false sentence because we have a danger of reject in probability of size of significance level.
#d. This is not correct. We cannot derive the Type 2 error from the test.
#e. The null hypothesis could not reject in a significance level of 1% cause the p-value is 0.04

#4
pa=c(248,236,269,254,249,251,260,245,239,255)
pb=c(380,391,377,392,398,374)

wilcox.test(1.5*pa,pb,alter="two.sided")

#5
#SE shows how close the sampling mean to population mean.
#SD is the information about the dispersion of the sample data.