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
  <b>S(x) = 1 􏰟- F(x)</b><br>
</p>
        
where F(x) = Pr(X<=x).

 A fundamental quantity in survival analysis, is the **Hazard Function**. This function is also known as the conditional failure rate in reliability, the force of mortality in demography, the intensity function in stochastic processes, the age-specific failure rate in epidemiology, the inverse of the Mill’s ratio in economics, or simply as the hazard rate. If X is a continuous random variable, then

<p align="center">
  <b>h(x) = f(x) / S(x)</b><br>
</p>

In the following code you will find the Probability Density Function, Survival function, Hazard Rate and Mean of the more widely used parametric models. 

```{r}
Df <- function(x, distribution) { 
```

Let's review each of them.


### Exponetial 


 

 
 
 
 
 








