##3 How to set up a binomial distribution 

# from 0 to 30 rainy days in a month of 30 days, probability is 1/3

x=0:30
y=dbinom(x, size=30, prob=1/3)

plot(x,y,type="h")
abline(v=3, col="red") # add a vertical line at x=3

# cumulative probability: the sum of all point probabilities for values smaller than or equal to 3
pbinom(3, size=30, prob=1/3)

#if we calculate prob of sunny days

x=0:30
y=dbinom(x, size=30, prob=2/3)

plot(x,y,type="h")
abline(v=27, col="red") # add a vertical line at x=3

pbinom(27, size=30, prob=2/3)

# to get values larger than 27:
1- pbinom(27, size=30, prob=2/3)

# but be careful, this does not inclue larger than and equal to.

# two methods:
#1
1- pbinom(26, size=30, prob=2/3)

#2
1- pbinom(27, size=30, prob=2/3)+
  dbinom(27, size=30, prob=2/3)

# Another method 
pbinom(27, size=30, prob=2/3, lower.tail=FALSE)


# simga controls the spread (width) of the distribution, the o looking thing

# how to do it with equations 
n <- 30
p_rain <- 1/3
mu_rain <- n * p_rain
sd_rain <- sqrt(n*p_rain * (1-p_rain))

1- pnorm(3, mean = mu_rain, sd = sd_rain)


#Exercise 1
# A
x=0:25
y=dbinom(x, size=25, prob=0.8)
plot(x,y,type="h")

# B
dbinom(20, size=25, prob=0.8)

#C
plot(x,y,type="h")
abline(v=15, col="red")
pbinom(15, size=25, prob=0.8)

#D
plot(x,y,type="h")
abline(v=24, col="red")
1-pbinom(23, size=25, prob=0.8)



# Exercise 2
#A
x=seq(80,160,0.5)
y = dnorm(x,mean=120,sd=10)
plot(x, y, type = "l")

#B
dnorm(120, mean=120, sd=10)  # why is this more likely. bc it is the mean, so the most likely value to get
dnrom(145, mean=120, sd=10)

#C
abline(v=100, col="red") 
abline(v=140, col="red")
pnorm(140, mean = 120, sd = 10) - pnorm(100, mean = 120, sd = 10)  #pnorm = probability that is lower # probability is represented by the area under the surve between the values
# means that if we extract by random an individual in this populaiton we have a probability of ___ to observe an individual with a value between these two values in this population. 

#D
abine(v=145, col="blue")
1-pnorm(145, mean=120, sd=10)
