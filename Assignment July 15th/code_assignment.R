#mtcars datsaset
bad=kmeans(mtcars,2)
plot(mtcars$mpg,mtcars$hp,col=bad$cluster,pch=16,cex=2,xlab="MPG",ylab="Horsepower")
cars_norm=scale(mtcars)
d=dist(cars_norm,method="euclidean")
hc=hclust(d,method="complete")
plot(hc)
cutree(hc,3)

#iris data set
pairs(iris[1:4])
summary(iris)

x=iris[,-5]
y=iris$Species

library(klaR)
library(caret)
library(class)
library(e1071)

model=train(x,y,'nb',trControl=trainControl(method="cv",number=10))



#spam dataset

install.packages("ElemStatLearn")
library(ElemStatLearn)

sub=sample(nrow(spam),floor(nrow(spam)*0.9))
train=spam[sub,]
test=spam[-sub,]

xTest=test[,-58]
yTest=test$spam

model=train(xTest,yTest,'nb',trControl=trainControl(method="cv",number=10))


prop.table(table(predict(model$finalModel,xTest)$class,yTest))

#Assignment3

plot(swiss$Fertility,swiss$Agriculture)
ye.model=lm(Agriculture~Fertility,data=swiss)
abline(ye.model)
swiss$pred=predict(ye.model,swiss)
points(swiss$Fertility,swiss$pred,col="blue",pch=16)

newswiss=data.frame(Fertility=seq(1,100,4))
newswiss$pred=predict(ye.model,newswiss)
points(newswiss$Fertility,newswiss$pred,col="green")
points(newswiss$Fertility,newswiss$pred,col="green",pch=3)
