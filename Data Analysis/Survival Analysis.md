
### Table of Contents

[Basic Quantities and Models](https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/Survival%20Analysis.md#basic-quantities-and-models)
* [Exponential Distribution](https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/Survival%20Analysis.md#exponential-distribution)
* [Weibull Distribution](https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/Survival%20Analysis.md#weibull-distribution)

---
### Basic Quantities and Models

 Let X be the time until some specified event.

 Four functions characterize the distribution of X, namely, the **Survival Function**, which is the probability of an individual surviving to time x; the **Hazard Rate** (function), sometimes termed risk function, which is the chance an individual of age x experiences the event in the next instant in time; the **Probability Density** (or probability mass) function, which is the unconditional probability of the event’s occurring at time x; and the **Mean Residual Life** at time x, which is the mean time to the event of interest, given the event has not occurred at x
 
 The basic quantity employed to describe time to event phenomena is the **Survival Function**, the probability of an individual surviving beyond time x (experiencing the event after time x). It is defined as

<p align="center">
  <b>S(x) = Pr(X>x)</b>
</p>

 Notice that when X is a continuous random variable, the survival function is the complement of the cumulative distribution function, that is, 

<p align="center">
  <b>S(x) = 1 - F(x)</b>
</p>
        
where F(x) = Pr(X<=x).

 A fundamental quantity in survival analysis, is the **Hazard Function**. This function is also known as the conditional failure rate in reliability, the force of mortality in demography, the intensity function in stochastic processes, the age-specific failure rate in epidemiology, the inverse of the Mill’s ratio in economics, or simply as the hazard rate. If X is a continuous random variable, then

<p align="center">
  <b>h(x) = f(x) / S(x)</b>
</p>

 In the following code you will find the Probability Density Function, Survival function, Hazard Rate and Mean of the more widely used parametric models. 

```{r}
# Probability Density Function
Df <- function(x, distribution) { 
  ifelse (
    distribution == 'exponential', lambda*exp(-lambda*x),
    ifelse (
    distribution == 'weibull', alpha*lambda*x^(alpha-1)*exp(-lambda*x^alpha),
    #distribution == 'log_logitic' ~ alpha*x^(alpha-1)/
    'Sorry, distribution not found!'
  ))
}

# Survival function
S <- function(x, distribution) {
  ifelse (
    distribution == 'exponential', exp(-lambda*x),
    ifelse(
    distribution == 'weibull', exp(-lambda*x^alpha),
    'Sorry, distribution not found!'
  ))
}

# Hazard Rate
H <- function(x, distribution) {
  ifelse (
    distribution == 'exponential', lambda,
  ifelse (
    distribution == 'weibull', alpha*lambda*x^(alpha-1),
    'Sorry, distribution not found!'
  ))
}

# Mean
Mean <- function(distribution) {
  ifelse (
    distribution == 'exponential', 1/lambda,
  ifelse (
    distribution == 'weibull', gamma(1+1/alpha)/lambda^(1/alpha),
    'Sorry, distribution not found!'
  ))
}
```

 Let's review each of them.


### Exponential Distribution

 This distribution describes the time between events in a Poisson point process, i.e., a process in which events occur continuously and independently at a constant average rate named as "lambda" (failure rate in a survival point of view). The probability density function (pdf) of an exponential distribution is

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/pdf_exponential.png" | width=250>
</p>

And its Survival function will be

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/survival_exponential.png" | width=115>
</p>

 For example, the lifetime of light bulbs follows an exponential distribution with a hazard rate of 0.001 failures per hour of use, this means &lambda; = 0.001 (given h(x) = &lambda; for exponential distribution). 

 Then the Survival Distribution looks like

```{r}
distribution <- 'exponential'
lambda <- 0.001
time <- seq(0,5000,10)
survival <- sapply(time, S, distribution)
plot(time, survival, type = 'l', main='Exponential Survival Function')
```

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/graph_exp1.png" | width=550>
</p>


 Notice that when lambda increases the probability for survival at same time 'x' decreases

```{r}
distribution <- 'exponential'
lambda <- 0.005
time <- seq(0,5000,10)
survival <- sapply(time, S, distribution)
plot(time, survival, type = 'l', main='Exponential Survival Function')
```

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/graph_exp2.png" | width=550>
</p>


### Weibull Distribution

 Similar to the exponential distribution, Weibull distribution describes the time to failure. The probability density function (pdf) of an exponential distribution is

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/pdf_weibull.png" | width=230>
</p>

 And the Survival Distribution is given by
 
<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/survival_weibull.png" | width=115>
</p>

 For example, the time in days to development of a tumor for rats exposed to a carcinogen follows a Weibull distribution with &alpha: = 1 and &lambda: = 0.001, the Survival Distribution looks like

```{r}
distribution <- 'weibull'
alpha <- 1
lambda <- 0.1
time <- seq(0,50,1)
survival <- sapply(time, S, distribution)
plot(time, survival, type = 'l', main='Weibull Survival Function')
```

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/graph_weibull1.png" | width=550>
</p>

 Weibull gives a distribution for which the failure rate is proportional to a power of time. The shape parameter, &alpha: will tell us how &lambda: behavies over time:

* A value of &alpha: = 1 indicates that the failure rate ($lambda:) is constant over time, as it was shown at the previous graph

* A value of &alpha: > 1 indicates that $lambda: increases over time, following the same example we notice that this caused an decrease of survival at the same time 'x' (given failure rate has increased) 

```{r}
distribution <- 'weibull'
alpha <- 1.2
lambda <- 0.1
time <- seq(0,50,1)
survival <- sapply(time, S, distribution)
plot(time, survival, type = 'l', main='Weibull Survival Function')
```

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/graph_weibull2.png" | width=550>
</p>

* A value of &alpha: < 1 indicates that $lambda: decreases over time then survival will increase at the same time 'x' 

```{r}
distribution <- 'weibull'
alpha <- 0.8
lambda <- 0.1
time <- seq(0,50,1)
survival <- sapply(time, S, distribution)
plot(time, survival, type = 'l', main='Weibull Survival Function')
```

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/graph_weibull3.png" | width=550>
</p>



---
### References

1. Klein, J. P. & Moeschberger (1997). Survival Analysis. Springer: New
York.
2. https://en.wikipedia.org/wiki/Exponential_distribution
3. https://en.wikipedia.org/wiki/Weibull_distribution



 
 









 

 
 
 
 
 








