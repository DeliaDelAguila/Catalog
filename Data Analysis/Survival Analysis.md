---
Title: "Survival Analysis"
Author: "Delia Del Aguila"
---

## Basic Quantities and Models

Let X be the time until some specified event.

 Four functions characterize the distribution of X, namely, the **Survival Function**, which is the probability of an individual surviving to time x; the **Hazard Rate** (function), sometimes termed risk function, which is the chance an individual of age x experiences the event in the next instant in time; the **Probability Density** (or probability mass) function, which is the unconditional probability of the event’s occurring at time x; and the **Mean Residual Life** at time x, which is the mean time to the event of interest, given the event has not occurred at x
 
 The basic quantity employed to describe time to event phenomena is the **Survival Function**, the probability of an individual surviving beyond time x (experiencing the event after time x). It is defined as

        S(x) 􏰗= Pr(X>x)

 Notice that when X is a continuous random variable, the survival function is the complement of the cumulative distribution function, that is, 

<p align="center">
  <b>S(x) = 1 􏰟- F(x)</b>
</p>
        
where F(x) = Pr(X<=x).

 A fundamental quantity in survival analysis, is the **Hazard Function**. This function is also known as the conditional failure rate in reliability, the force of mortality in demography, the intensity function in stochastic processes, the age-specific failure rate in epidemiology, the inverse of the Mill’s ratio in economics, or simply as the hazard rate. If X is a continuous random variable, then

<p align="center">
  <b>h(x) = f(x) / S(x)</b>
</p>

In the following code you will find the Probability Density Function, Survival function, Hazard Rate and Mean of the more widely used parametric models. 

```{r}
Df <- function(x, distribution) { 
```

Let's review each of them.


### Exponential 

 
This distribution describes the time between events in a Poisson point process, i.e., a process in which events occur continuously and independently at a constant average rate.

<p align="center">
  <img src="https://github.com/DeliaDelAguila/Catalog/blob/master/Data%20Analysis/images/pdf_exponential.png" | width=250>
</p>



Lambda indicates the failure rate.

When lambda increases the probability for survival at same time 't' decreases

distribution <- 'exponential'
lambda <- 0.02
time <- seq(0,10000,10)
survival <- sapply(time, S, distribution)
plot(time, survival)
 

 
 
 








