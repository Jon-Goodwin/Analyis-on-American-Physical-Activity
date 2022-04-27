#### Preamble ####]
# Purpose: Simulate dataset
# Author: Jonathan Goodwin
# Data: 26 April 2022
# Contact: jon.goodwin@mail.utoronto.ca

library(tidyverse)
set.seed(1)

### Simulating dataset ###
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
)
x <- unique(cleaned_physical_activity$LocationDesc)
y <- rep(x, each = 10)
years <- c("2010","2011","2012","2013","2014","2015","2016","2017","2018","2019")
years <- rep(years, times = 53)
### Choosing a beta distribution since the values are proportions
### From the previews of the dataset it seemed the mean number of 
### people who ride bikes was around 0.05, so I chose a alpha = 2, beta = 38
### Data given did not give more then 1 digit in the proportion so rounding 
### to 3 digits
z <-100*round(rbeta(530, shape1 = 2, shape2 = 38), digits = 3)
df <- cbind(years,y, z)
### Simulating the physical activity survey ###
Questions <- c("Percent of adults who achieve at least 
               300 minutes a week of moderate-intensity 
               aerobic physical activity or 150 minutes a
               week of vigorous-intensity aerobic activity
               (or an equivalent combination)",
                 "Percent of adults who engage in muscle-strengthening
               activities on 2 or more days a week",
                 "Percent of adults who achieve at least 150 minutes a
               week of moderate-intensity aerobic physical activity or 
               75 minutes a week of vigorous-intensity aerobic activity 
               (or an equivalent combination)","Percent of adults who engage
               in no leisure-time physical activity","Percent of adults aged
               18 years and older who have an overweight classification",
               "Percent of adults aged 18 years and older who have obesity")
n <- rep(x, each = 36)
n<- rep(n, times = 10)
Question <- rep(Questions, each = 6)
Question <- rep(Question, times = 53)
Question <- rep(Question, times = 10)
Age_years <- c("25 - 34", "55-64", "18-24","45-54", "35-44", "65 or older")
Age_years <- rep(Age_years, times = 3180)
years1 <- c("2011","2012","2013","2014","2015","2016","2017","2018","2019", "2020")
years1<- rep(years1, each = 1908)
### Had no indication of the average for each question so sampling from
### a uniform distribution
Value <-100*round(runif(19080, min = 0, max = 1))
df2 <- cbind(years1,Question,Value,Age_years)