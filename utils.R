#############################################
#   TOOLS FOR QUICK DATA ANALYSIS
#          Delia Del Aguila
#############################################


#############################################
#               SET ENVIRONMENT
#############################################

set_environment <- function(env){
  setwd(env)
  
  # Data Preparation
  library(tidyverse)  
  
  # Data Visualization
  library(ggplot2)   
  library(gridExtra)   
  
  # For Modeling
  library(glmnet)   
}


#############################################
#     DATA VISUALIZATION - Quantitative
#############################################

viz_density <- function(file_data, numeric_var){
  ggplot(file_data, aes(x = eval(parse(text = numeric_var)), y=..count.. / sum(..count..))) + 
    geom_density(color="darkblue", fill="lightblue") +
    labs(x = numeric_var, y = "Percentage") +
    ggtitle(paste0("Density of ", numeric_var)) +
    theme_minimal()
}

viz_hist <- function(file_data, numeric_var){
  ggplot(file_data, aes(x = eval(parse(text = numeric_var)))) + 
    geom_histogram(fill = "lightblue", color = "darkblue") +
    labs(x = numeric_var, y = "Frequency") +
    ggtitle(paste0("Frequency of ", numeric_var)) +
    theme_minimal()
}

viz_box <- function(numeric_var, outliers){
  boxplot(numeric_var,outline=outliers, border="darkblue", col="lightblue", ylab=deparse(substitute(numeric_var)), 
          main= paste0(deparse(substitute(numeric_var)), " without outliers"))
}



#############################################
#     DATA VISUALIZATION - Categorical
#############################################

viz_bar <- function(file_data, numeric_var){
  file_data %>%
    count(numeric_var = eval(parse(text = numeric_var)))  %>%
    ggplot(aes(x = reorder(numeric_var, n), y=n)) + 
    geom_bar(stat = "identity", fill = "lightblue", color = "darkblue") +
    labs(x = numeric_var, y = "Frequency") +
    ggtitle(paste0("Frequency of ", numeric_var)) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
}


#############################################
#            STATS
#############################################

get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}



#############################################
#            DATA PREPARATION
#############################################


remove_outliers <- function(x, na.rm = TRUE, ...) {
  qnt <- quantile(x, probs=c(.25, .75), na.rm = na.rm, ...)
  H <- 1.5 * IQR(x, na.rm = na.rm)
  y <- x
  y[x < (qnt[1] - H)] <- NA
  y[x > (qnt[2] + H)] <- NA
  y
}






