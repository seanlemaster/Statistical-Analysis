# Quantiles: we start from a probability level (p0) and look for the value x0 that leaves exactly the share of distribution below it. 

heights <- c(seq(5.1, 9.9, length.out = 10), # 5-10 m
seq(10.1, 14.9, length.out = 20), # 10-15 m
seq(15.1, 19.9, length.out = 40), # 15-20 m
seq(20.1, 24.9, length.out = 20), # 20-25 m
seq(25.1, 29.9, length.out = 10)) # 25-30 m

length(heights)

hist(heights, breaks = seq(5, 30, 5),
main = "Empirical distribution of 100 tree heights",
xlab = "Height (m)")

#computing quantiles
quantile(heights, probs = c(0.25, 0.50, 0.75))

m <- mean(heights)
s <- sd(heights)
m
s


#The theoretical quantiles
qnorm(c(0.25, 0.50, 0.75), mean = m, sd = s)
# These values come from the bell-shaped curve. they derwcribe where % of the trees in the whole forest would fall if the normal model were correct

$ How to determine which value of X has exactly 90.9% of the distribution below it?
qnorm(0.908789, mean  = 100, sd = 15)

# all the variable X such that all the values of X that are higher than 2.5% wualtile and lowe than 97.5% quantile = central 95% interval 

## Confidence intervals 

# confidence interval is an expression of uncertainty. A range of plausible values for the unknown parameter. 95% confidence = if we repeated the sampling, about 95% of those intervals would contain the true value of the parameter. 


## Random numbers from a distribution

# to extract samples from a theoretical distribution: rnorm and rbinorm
set.seed (123)
rnorm(10)

# 10 random values from a normal distribution
rnorm(10, mean=7, sd=5)

# 10 random values from a binomial distribution
rbinorm(10, size=20, prob=0.5)


# Exercise 4: 
# A
set.seed (10)
extract <- rnorm(50, mean=175, sd=7)
m <- mean(extract)
s <- sd(extract)

# 172.6109, 6.064853

# B
hist(extract)

#C
set.seed (10)
extract <- rnorm(5000, mean=175, sd=7)
m <- mean(extract)
s <- sd(extract)
hist(extract)




