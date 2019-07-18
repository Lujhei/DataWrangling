#Note: The resources were adopted from Lynda.com's Data Visualization Course. There's no intention in redistribution or infringment.
# Load the tidyverse
library(tidyverse)

setwd("/Users/Yun/Dropbox/R/Data Wrangling")

#Task 1: This targets a common data wrangling problem wherein not every variable forms a column- column headers are values rather than variables. In this case, all of the income values are different columns rather than one- income
# Load the data file
pew <- read_csv("pew.csv")
# Use the gather function to transform the data set into standardized tidy format. What I’ve done here is say, I want to transform this table “pew” from a wide dataset to a long dataset. I want to choose all the columns except “religion” and turn those into different observations under the column “income”- I also want to denote each of the respective values in the original cells as “freq.”
pew.long <- gather(pew, income, value, -religion)

# Task 2: This task targets the problem where multiple variables are in one column- namely tmin and tmax. The difficulty can come from the recognition of what qualifies as a variable.
# Load the second data file
weather <- read_csv("mexicanweather.csv")
weather.wide <- spread(weather, element, value)

#These are specifically data cleaning tasks to ensure that R can run it efficiently. However, this doesn't necessarily equate to how it can be interpreted by human viewers.