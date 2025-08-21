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
covid <- read_csv("owid-covid-data.csv")
# Quick Data Overview
str(covid)
head(covid)

# --------------------
# UNITED STATES
# --------------------

# Graph 1: People Fully Vaccinated #
US1 <- filter(covid, covid$location == "United States" & covid$people_fully_vaccinated >= 0)
US1date <- as.Date(US1$date, format ="%m/%d/%Y")

plot(US1date, US1$people_fully_vaccinated, main = "COVID-19: People Fully Vaccinated in the United States", 
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l")

# Graph 2: New Vaccinations Administered #
US2 <- filter(covid, covid$location == "United States" & covid$new_vaccinations >= 0)
US2date <- as.Date(US2$date, format ="%m/%d/%Y")

plot(US2date, US2$new_vaccinations, main = "COVID 19: New Vaccinations Administered in the United States",
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l")

# Graph 3: Total Boosters Administered #
US3 <- filter(covid, covid$location == "United States" & covid$total_boosters >= 0)
US3date <- as.Date(US3$date, format ="%m/%d/%Y")

plot(US3date, US3$total_boosters, main = "COVID-19: Total Boosters Administrated in the United States",
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l")

# --------------------
# FRANCE
# --------------------

# Graph 1: People Fully Vaccinated #
FR1 <- filter(covid, covid$location == "France" & covid$people_fully_vaccinated >= 0)
FR1date <- as.Date(FR1$date, format ="%m/%d/%Y")

plot(FR1date, FR1$people_fully_vaccinated, main = "COVID-19: People Fully Vaccinated in France",
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l")

# Graph 2: New Vaccinations Administered #
FR2 <- filter(covid, covid$location == "France" & covid$new_vaccinations >= 0)
FR2date <- as.Date(FR2$date, format ="%m/%d/%Y")

plot(FR2date, FR2$new_vaccinations, main = "COVID 19: New Vaccinations Administered in France",
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l")

# Graph 3: Total Boosters Administered #
FR3 <- filter(covid, covid$location == "France" & covid$total_boosters >= 0)
FR3date <- as.Date(FR3$date, format ="%m/%d/%Y")

plot(FR3date, FR3$total_boosters, main = "COVID-19: Total Boosters Administrated in France",
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l")

# --------------------
# GERMANY
# --------------------

# Graph 1: People Fully Vaccinated #
DE1 <- filter(covid, covid$location == "Germany" & covid$people_fully_vaccinated >= 0)
DE1date <- as.Date(DE1$date, format ="%m/%d/%Y")

plot(DE1date, DE1$people_fully_vaccinated, main = "COVID-19: People Fully Vaccinated in Germany",
     xlab = "Date", ylab = "Number of People Fully Vaccinated (in millions)", type = "l")

# Graph 2: New Vaccinations Administered #
DE2 <- filter(covid, covid$location == "Germany" & covid$new_vaccinations >= 0)
DE2date <- as.Date(DE2$date, format ="%m/%d/%Y")

plot(DE2date, DE2$new_vaccinations, main = "COVID 19: New Vaccinations Administered in Germany",
     xlab = "Date", ylab = "Number of People Administered New Vaccinations (in millions)", type = "l")

# Graph 3: Total Boosters Administered #
DE3 <- filter(covid, covid$location == "Germany" & covid$total_boosters >= 0)
DE3date <- as.Date(DE3$date, format ="%m/%d/%Y")

plot(DE3date, DE3$total_boosters, main = "COVID-19: Total Boosters Administrated in Germany",
     xlab = "Date", ylab = "Number of People Administered Boosters (in millions)", type = "l")
