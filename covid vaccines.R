# COVID #
###################################################
############## Working Directory ##############
setwd("C:/Users/...")
getwd()
################# Packages ####################
library(readr)
library(dplyr)
library(tidyr)
###################################################
# Data Set #
###################################################
################ Import Data ################
covid <- read_csv("owid-covid-data.csv")
covid
# Explore the Data Set
str(covid)
head(covid)
###################################################
###################################################
# United States #
###################################################
#1.people_fully_vaccinated
US <- filter(covid, covid$location == "United States"
& covid$people_fully_vaccinated >= 0)
US
USdate <- as.Date(US$date, format ="%m/%d/%Y")
USdate
# Graph: People Fully Vaccinated in the United States
plot(USdate, US$people_fully_vaccinated, main = "People Fully Vaccinated in the United
States",
xlab = "Date", ylab = "The Number of Fully Vaccinated People", type = "l")
###################################################
#2. new_vaccinations & total_boosters
US1 <- filter(covid, covid$location == "United States"
& covid$new_vaccinations >= 0)
US1
US1date <- as.Date(US1$date, format ="%m/%d/%Y")
US1date
# Graph: New Vaccinations Administered in the United States
plot(US1date, US1$new_vaccinations, main = "New Vaccinations Administered in the United
States",
xlab = "Date", ylab = "The Number of People Administered New Vaccinations", type = "l")
##########################
US2 <- filter(covid, covid$location == "United States"
& covid$total_boosters >= 0)
US2
US2date <- as.Date(US2$date, format ="%m/%d/%Y")
US2date
# Graph: Total Boosters Administered in the United States
plot(US2date, US2$total_boosters, main = "Total Boosters Administrated in the United States",
xlab = "Date", ylab = "The Number of People Administered Boosters", type = "l")
###################################################
# France #
###################################################
#1. people_fully_vaccinated
FR <- filter(covid, covid$location == "France"
& covid$people_fully_vaccinated >= 0)
FR
FRdate <- as.Date(FR$date, format ="%m/%d/%Y")
FRdate
# Graph: People Fully Vaccinated in France
plot(FRdate, FR$people_fully_vaccinated, main = "People Fully Vaccinated in France",
xlab = "Date", ylab = "The Number of Fully Vaccinated People", type = "l")
###################################################
#2. new_vaccinations & total_boosters
FR1 <- filter(covid, covid$location == "France"
& covid$new_vaccinations >= 0)
FR1
FR1date <- as.Date(FR1$date, format ="%m/%d/%Y")
FR1date
# Graph: New Vaccinations Administered in France
plot(FR1date, FR1$new_vaccinations, main = "New Vaccinations Administered in France",
xlab = "Date", ylab = "The Number of People Administered New Vaccinations", type = "l")
##########################
FR2 <- filter(covid, covid$location == "France"
& covid$total_boosters >= 0)
FR2
FR2date <- as.Date(FR2$date, format ="%m/%d/%Y")
FR2date
# Graph: Total Boosters Administered in France
plot(FR2date, FR2$total_boosters, main = "Total Boosters Administrated in France",
xlab = "Date", ylab = "The Number of People Administered Boosters", type = "l")
###################################################
# Germany #
###################################################
#1. people_fully_vaccinated
DE <- filter(covid, covid$location == "Germany"
& covid$people_fully_vaccinated >= 0)
DE
DEdate <- as.Date(DE$date, format ="%m/%d/%Y")
DEdate
# Graph: People Fully Vaccinated in Germany
plot(DEdate, DE$people_fully_vaccinated, main = "People Fully Vaccinated in Germany",
xlab = "Date", ylab = "The Number of Fully Vaccinated People", type = "l")
###################################################
#2. new_vaccinations & total_boosters
DE1 <- filter(covid, covid$location == "Germany"
& covid$new_vaccinations >= 0)
DE1
DE1date <- as.Date(DE1$date, format ="%m/%d/%Y")
DE1date
# Graph: New Vaccinations Administered in Germany
plot(DE1date, DE1$new_vaccinations, main = "New Vaccinations Administered in Germany",FR1date <- as.Date(FR1$date, format ="%m/%d/%Y")
FR1date
# Graph: New Vaccinations Administered in France
plot(FR1date, FR1$new_vaccinations, main = "New Vaccinations Administered in France",
xlab = "Date", ylab = "The Number of People Administered New Vaccinations", type = "l")
##########################
FR2 <- filter(covid, covid$location == "France"
& covid$total_boosters >= 0)
FR2
FR2date <- as.Date(FR2$date, format ="%m/%d/%Y")
FR2date
# Graph: Total Boosters Administered in France
plot(FR2date, FR2$total_boosters, main = "Total Boosters Administrated in France",
xlab = "Date", ylab = "The Number of People Administered Boosters", type = "l")
###################################################
# Germany #
###################################################
#1. people_fully_vaccinated
DE <- filter(covid, covid$location == "Germany"
& covid$people_fully_vaccinated >= 0)
DE
DEdate <- as.Date(DE$date, format ="%m/%d/%Y")
DEdate
# Graph: People Fully Vaccinated in Germany
plot(DEdate, DE$people_fully_vaccinated, main = "People Fully Vaccinated in Germany",
xlab = "Date", ylab = "The Number of Fully Vaccinated People", type = "l")
###################################################
#2. new_vaccinations & total_boosters
DE1 <- filter(covid, covid$location == "Germany"
& covid$new_vaccinations >= 0)
DE1
DE1date <- as.Date(DE1$date, format ="%m/%d/%Y")
DE1date
# Graph: New Vaccinations Administered in Germany
plot(DE1date, DE1$new_vaccinations, main = "New Vaccinations Administered in Germany",
xlab = "Date", ylab = "The Number of People Administered New Vaccinations", type = "l")
##########################
DE2 <- filter(covid, covid$location == "Germany"
& covid$total_boosters >= 0)
DE2
DE2date <- as.Date(DE2$date, format ="%m/%d/%Y")
DE2date
# Graph: Total Boosters Administered in Germany
plot(DE2date, DE2$total_boosters, main = "Total Boosters Administrated in Germany",
xlab = "Date", ylab = "The Number of People Administered Boosters", type = "l")
