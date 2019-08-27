# Recommender Systems
At this section we will learn how to create a Recommender System from scratch at Python.
 
 To create a good recommender system we need a lot of accurate data as ratings, consumptions, purchases or usage recurrence based on what you want to recommend (videos, ads, products, people...).
  
  Most of the recommenders works based on:
 1. Individual interests relation with other user behaviour
 2. Ranking recommendation based on scores
 3. Eliminate already rated content by user
 

## Step 1: Setting your environment 

1. Install [Anaconda](https://docs.anaconda.com/anaconda/install/) including Python
2. Create a new environment at Anaconda: Environment > Create > Write Name > Choose Python and Save

![alt text](https://github.com/DeliaDelAguila/Catalog/blob/master/Images/RecSys1.PNG "")


3. Install [Surprise](https://surprise.readthedocs.io/en/stable/index.html), which is a package to easily create recommender systems at Python, openning the terminal and using the following

```
conda install -c conda-forge scikit-surprise
```
