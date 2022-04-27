#### Preamble ####]
# Purpose: To clean data from inputs
# Author: Jonathan Goodwin
# Data: 20 April 2022
# Contact: jon.goodwin@mail.utoronto.ca

library(pointblank)
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
                     )
raw_data1 <- readr::read_csv("inputs/data/CDC_community survey.csv")

### Removing non relevant questions ###
categories <- unique(raw_data$Question)
df <- subset(raw_data, Question != "Percent of adults who report consuming vegetables less than one time daily")
df <- subset(df, Question != "Percent of adults who report consuming fruit less than one time daily" )
df <- subset(df, Question != "Percent of adults who achieve at least 150 minutes a week of moderate-intensity aerobic physical activity or 75 minutes a week of vigorous-intensity aerobic physical activity and engage in muscle-strengthening activities on 2 or more days a week")
Columns <- c("YearEnd","LocationDesc", "Question", "Data_Value")
raw_data1[Columns]
df1 <- raw_data1[Columns]
Columns1 <- c("YearEnd","LocationDesc", "Question", "Data_Value", "Age(years)")
df2 <- df[Columns1]
### Removing NA values, these values corresponded to stratification we
### were not interested in or for insufficient sample size.
df2 <- na.omit(df2)
df2 <- subset(df2, LocationDesc != "Guam")
df2 <- subset(df2, LocationDesc != "Virgin Islands")
df2 <- subset(df2, LocationDesc != "Peurto Rico")


### Write csv ###
write.csv(x=df1, file = "cleaned_walk_or_bike.csv")
write.csv(x=df2, file = "cleaned_physical_activity.csv")