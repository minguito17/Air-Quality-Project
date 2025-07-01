# ADS507-Final-Project

# Air Quality & Health Impact Analysis 🚀

## Project Overview 📌
This project analyzes the impact of air pollution on public health, specifically in Southern California counties. The datasets include air quality measurements, emergency department visits, and hospitalizations related to asthma. The data was imported into an Azure MySQL database for further analysis.  The data pipeline integrates air quality data from the <website> with health records to study pollution exposure effects on health outcomes.

# Database Structure 🗂️
The project uses MySQL (hosted on Azure) for data storage and processing.

These tables contain data related to air pollution levels, air quality index (AQI), and asthma-related emergency and hospitalization cases.

The database consists of multiple tables containing pollution data and health data:
  
| Table Name                          | Description                                     |
|-------------------------------------|-------------------------------------------------|
| LA_CO                               | PM2.5 pollution data for Los Angeles            |
| LA_PM                               | CO pollution data for Los Angeles               |
| SD_CO                               | PM2.5 pollution data for San Diego              |
| SD_PM                               | CO pollution data for San Diego                 |
| OR_CO   	                          | PM2.5 pollution data for Orange                 |
| OR_PM                               | CO pollution data for Orange                    |
| SB_CO                               | PM2.5 pollution data for San Bernadino          |
| SC_PM                               | CO pollution data for San Bernadion             |
| CO_data                             | Combined tabled of all CO pollution data        |
| PM25_data                           | Combined tabled of all PM2.5 pollution data     |
| 'asthma-emergency-2015_2022'        | asthma ER visits                                |
| 'asthma-hospitalization-2015_2022'  | Asthma hospitalizations                         |
| asthma_pollution                    | Asthma ER visits with avg pollution data        |
| hospital_pollution                  | Asthma hospitalization with avg pollution data  |


### Database: `air_quality_analysis`

This database is held on an AZURE server with acess given to the contributers listed below.


### Data Processing and Analysis

The data is structured and stored in MySQL for efficient querying and analysis.

Queries were written to merge datasets and extract relevant insights.

Further analysis and visualization will be performed using Python in a Jupyter Notebook environment.

A Tableau dashboard has been created using the resources in this project.



### Next Steps

- Expand the database to include EPA pollution data from more years
- Add traffic density data 
  


### Contributors:
Linden Conrad-Marut, Marinela Inguito, Liam Richardson
Organization: University of San Diego

---
