# COVID-19 Vaccination Trends in the United States, France, and Germany

## Abstract
- **Conclusion**:
- **Tools**: R, RStudio, `readr`, `dplyr`, `tidyr`
- **Skills**: 

---

## Project Overview



---

## Methodology

- **Dataset**: `owid-covid-data.csv`
- **Language**: R
- **Environment**: RStudio
- **Packages**:
  - `readr` for CSV handling
  - `dplyr` for data manipulation
  - `tidyr` for data reshaping

#### Key Variables

| Variable Name              | Description                                          |
|----------------------------|------------------------------------------------------|
| `people_fully_vaccinated`  | Numeric variable representing the cumulative number of individuals fully vaccinated against COVID-19 |
| `new_vaccinations`         | Numeric variable representing the daily number of new vaccinations administered |
| `total_boosters`           | Numeric variable representing the cumulative number of booster doses administered |
| `date`                     | Interval variable indicating when the vaccination data was recorded             |
| `location`                 | Categorical variable indicating the country or region where the data was collected | 

---

## Core Analysis



---

## Conclusion



---

## Limitations

---

## How to Run

1. **Install R and RStudio**
   - [R Download](https://cran.r-project.org/)
   - [RStudio Download](https://posit.co/download/rstudio-desktop/)

2. **Clone the Repository**
   ```bash
   git clone https://github.com/hgurr/covid-vaccination-trends.git
   cd covid-vaccination-trends

3. **Open `covid-vaccination-trends.R` in RStudio**

4. **Install Required Packages**
   ```bash
   install.packages(c("readr", "dplyr", "tidyr"))
5. **Run the Script**

Ensure covid-vaccination-trends.csv is in your working directory.
- Click **Source** to run the whole script, or
- Run line-by-line for step-by-step execution

---

## Project Structure
   ```bash
covid-vaccination-trends/
├── covid-vaccination-trends.R         # Main R analysis script
├── owid-covid-data.csv                # Dataset
└── README.md                          # Documentation and summary
