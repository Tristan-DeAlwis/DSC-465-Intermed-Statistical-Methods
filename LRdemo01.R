
set.seed(4321)
par(mfrow=c(1,1))

### Simulate eps 

eps = rnorm(20,mean=0,sd=10)

### set parameters

beta0 = 10
beta1 = 5

### set independent variable x

x = 1:20

### plot function

plot(x,beta0+beta1*x)

### add eps

y = beta0+beta1*x+eps

### plot y vs x

plot(x,y)

### Do linear regression 

fit = lm(y~x)
summary(fit)

### Extract parameter estimates, 

ls.coef = fit$coef

### or

ls.coef = coef(fit)

### add correct regression line in green

abline(beta0,beta1,col='green')

### add estimated regression line in red

abline(ls.coef,col='red')

### From scratch 

b1 = sum((x-mean(x))*(y-mean(y)))/sum((x-mean(x))^2)
b0 = mean(y)-b1*mean(x)

rbind(ls.coef,c(b0,b1))

### ANOVA

anova.fit = anova(fit)
anova.fit

### Compare F-test to P-value for beta1 

summary(fit)

## Estimater of sigma^2 

anova.fit$`Mean Sq`






