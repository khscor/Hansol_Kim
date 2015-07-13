#package "ggplot2"
library(ggplot2)

#loading a dataset
a=read.csv(file.choose(),sep=";")

#plot a relationship between studytime and portugees score
p=qplot(studytime,G3,data=a)
p+geom_abline(colour="blue")
coef(lm(G3~studytime,data=a))

#plot the distributions of scores (fisrt, second, and third test)
k=qplot(G3,data=a,geom="density")

