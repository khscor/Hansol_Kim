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
