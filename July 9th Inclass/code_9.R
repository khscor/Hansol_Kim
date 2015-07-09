#1
#Money spent on first visit 
mf=c(20,32,35,34,40,51,52,56,57,68)

#Money spent on secont visit
mc=c(23,34,36,44,42,51,54,57,54,62)

#a-b
reg=lm(mc~mf)
summary(reg)
plot(mf,mc)
abline(reg)

#c
cor(mc,mf)

#d
SE=sqrt(1-cor(mc,mf)^2/(length(mf)-2))
cor.test(mf,mc)
cor.test(mf,mc)$conf.int

#e

#2-a
nmc=mc+30
reg2=lm(nmc~mf)
summary(reg2)
plot(mf,nmc)
abline(reg2)
cor(mf,nmc) #exactly same
cor.test(mf,nmc)

#2-b
nmf=mf*100
reg3=lm(mc~nmf)
summary(reg3)
plot(nmf,mc)
abline(reg3)

cor(mc,nmf)
cor.test(mc,nmf)
#3
hr=c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
mp=c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)


plot(hr,mp)
cor(hr,mp)
cor.test(hr,mp)
reg4=lm(mp~hr)   
summary(reg4)
abline(reg4)
