########################################################################
## Title: COVID-19 Vaccination Trends in the United States, France, and Germany
## Author: https://github.com/hgurr
## Date: 03-16-2024
## Description:
##   Analyzes COVID-19 vaccination data to explore trends in vaccine uptake
##   across the United States, France, and Germany. Focuses on three key metrics:
##   1) The number of people fully vaccinated
##   2) The number of new vaccinations administered
##   3) The total number of booster doses administered
##   
##   For each country, the script filters the dataset, converts date formats,
##   and creates line graphs to visualize the vaccination trends over time.
##   These graphs will be used to compare patterns and highlight differences
##   in vaccination uptake between the three countries.
##
##   Based on: owid-covid-data.csv dataset.
########################################################################

# Set Working Directory #
setwd("C:/Users/...") # Replace the content within the quotes with your selected working directory
getwd()

# Load Required Packages #
library(readr)
library(dplyr)
library(tidyr)

# Import and Explore Dataset #
## Import
covid <- read_csv("owid-covid-data.csv")
## Quick Data Overview
str(covid)
head(covid)

# Variables of Interest #
# 1. "people_fully_vaccinated" — Cumulative number of fully vaccinated individuals
# 2. "new_vaccinations" — Daily new vaccinations administered
# 3. "total_boosters" — Cumulative number of booster doses administered
# 4. "date" — Date on which the data was recorded
# 5. "location" — Country name where the data was recorded

# Format Date — x-axis
date <- as.Date(covid$date, format = "%m/%d/%Y")

# --------------------
# UNITED STATES
# --------------------

# Data Frame
us <- filter(covid, covid$location == "United States")

# Graph 1: People Fully Vaccinated #
## People Fully Vaccinated — y-axis
plot(date, us$people_fully_vaccinated, main = "People Fully Vaccinated in the United States", 
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l", col = "crimson")

# Graph 2: New Vaccinations Administered #
## New Vaccinations Administered — y-axis
plot(date, us$new_vaccinations, main = "New Vaccinations Administered in the United States", 
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l", col = "crimson")

# Graph 3: Total Boosters Administered #
## Total Boosters Administrated — y-axis
plot(date, us$total_boosters, main = "Total Boosters Administrated in the United States", 
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l", col = "crimson")

# --------------------
# FRANCE
# --------------------

# Data Frame
fr <- filter(covid, covid$location == "France")

# Graph 1: People Fully Vaccinated #
## People Fully Vaccinated — y-axis
plot(date, fr$people_fully_vaccinated, main = "People Fully Vaccinated in France", 
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l", col = "mediumseagreen")

# Graph 2: New Vaccinations Administered #
## New Vaccinations Administered — y-axis
plot(date, fr$new_vaccinations, main = "New Vaccinations Administered in France", 
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l", col = "mediumseagreen")

# Graph 3: Total Boosters Administered #
## Total Boosters Administrated — y-axis
plot(date, fr$total_boosters, main = "Total Boosters Administrated in France", 
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l", col = "mediumseagreen")

# --------------------
# GERMANY
# --------------------

# Data Frame
de <- filter(covid, covid$location == "Germany")

# Graph 1: People Fully Vaccinated #
## People Fully Vaccinated — y-axis
plot(date, de$people_fully_vaccinated, main = "People Fully Vaccinated in Germany", 
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l", col = "steelblue")

# Graph 2: New Vaccinations Administered #
## New Vaccinations Administered — y-axis
plot(date, de$new_vaccinations, main = "New Vaccinations Administered in Germany", 
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l", col = "steelblue")

# Graph 3: Total Boosters Administered #
## Total Boosters Administrated — y-axis
plot(date, de$total_boosters, main = "Total Boosters Administrated in Germany", 
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l", col = "steelblue")
