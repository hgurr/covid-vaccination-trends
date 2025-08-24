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

# Install and Load Required Packages #
## Install
install.packages("readr")
install.packages("dplyr")
install.packages("tidyr")
## Load
library(readr)
library(dplyr)
library(tidyr)

# Import and Explore Dataset #
## Import
covid <- read_csv("owid-covid-data.csv")
## Quick Data Overview
str(covid)
head(covid)

# Define Variables of Interest #
# 1. "people_fully_vaccinated" — Cumulative number of fully vaccinated individuals
# 2. "new_vaccinations" — Daily new vaccinations administered
# 3. "total_boosters" — Cumulative number of booster doses administered
# 4. "date" — Date on which the data was recorded
# 5. "location" — Country name where the data was recorded

# --------------------
# UNITED STATES
# --------------------

# Graph 1: People Fully Vaccinated #
## Date — x-axis
US1date <- as.Date(US1$date, format ="%m/%d/%Y")
## People Fully Vaccinated in the United States — y-axis
US1 <- filter(covid, covid$location == "United States" & covid$people_fully_vaccinated >= 0)

plot(US1date, US1$people_fully_vaccinated, main = "COVID-19: People Fully Vaccinated in the United States", 
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l")

# Graph 2: New Vaccinations Administered #
## Date — x-axis
US2date <- as.Date(US2$date, format ="%m/%d/%Y")
## New Vaccinations Administered in the United States — y-axis
US2 <- filter(covid, covid$location == "United States" & covid$new_vaccinations >= 0)

plot(US2date, US2$new_vaccinations, main = "COVID 19: New Vaccinations Administered in the United States",
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l")

# Graph 3: Total Boosters Administered #
## Date — x-axis
US3date <- as.Date(US3$date, format ="%m/%d/%Y")
## Total Boosters Administrated in the United States — y-axis
US3 <- filter(covid, covid$location == "United States" & covid$total_boosters >= 0)

plot(US3date, US3$total_boosters, main = "COVID-19: Total Boosters Administrated in the United States",
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l")

# --------------------
# FRANCE
# --------------------

# Graph 1: People Fully Vaccinated #
## Date — x-axis
FR1date <- as.Date(FR1$date, format ="%m/%d/%Y")
## People Fully Vaccinated in France — y-axis
FR1 <- filter(covid, covid$location == "France" & covid$people_fully_vaccinated >= 0)

plot(FR1date, FR1$people_fully_vaccinated, main = "COVID-19: People Fully Vaccinated in France",
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l")

# Graph 2: New Vaccinations Administered #
## Date — x-axis
FR2date <- as.Date(FR2$date, format ="%m/%d/%Y")
## New Vaccinations Administered in France — y-axis
FR2 <- filter(covid, covid$location == "France" & covid$new_vaccinations >= 0)

plot(FR2date, FR2$new_vaccinations, main = "COVID 19: New Vaccinations Administered in France",
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l")

# Graph 3: Total Boosters Administered #
## Date — x-axis
FR3date <- as.Date(FR3$date, format ="%m/%d/%Y")
## Total Boosters Administrated in France — y-axis
FR3 <- filter(covid, covid$location == "France" & covid$total_boosters >= 0)

plot(FR3date, FR3$total_boosters, main = "COVID-19: Total Boosters Administrated in France",
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l")

# --------------------
# GERMANY
# --------------------

# Graph 1: People Fully Vaccinated #
## Date — x-axis
DE1date <- as.Date(DE1$date, format ="%m/%d/%Y")
## People Fully Vaccinated in Germany — y-axis
DE1 <- filter(covid, covid$location == "Germany" & covid$people_fully_vaccinated >= 0)

plot(DE1date, DE1$people_fully_vaccinated, main = "COVID-19: People Fully Vaccinated in Germany",
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l")

# Graph 2: New Vaccinations Administered #
## Date — x-axis
DE2date <- as.Date(DE2$date, format ="%m/%d/%Y")
## New Vaccinations Administered in Germany — y-axis
DE2 <- filter(covid, covid$location == "Germany" & covid$new_vaccinations >= 0)

plot(DE2date, DE2$new_vaccinations, main = "COVID 19: New Vaccinations Administered in Germany",
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l")

# Graph 3: Total Boosters Administered #
## Date — x-axis
DE3date <- as.Date(DE3$date, format ="%m/%d/%Y")
## Total Boosters Administrated in Germany — y-axis
DE3 <- filter(covid, covid$location == "Germany" & covid$total_boosters >= 0)

plot(DE3date, DE3$total_boosters, main = "COVID-19: Total Boosters Administrated in Germany",
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l")
