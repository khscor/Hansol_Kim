
dicefunction=function(r){
  C=0
    for (i in 1:r+1){
    A=sample(1:6,1)
    B=sample(1:6,1)
    C=c(C,A+B)}
    C[-1]
}

plot(dicefunction(10))
plot(dicefunction(100))
plot(dicefunction(10000))
