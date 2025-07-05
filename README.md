
# Air Quality & Health Impact Analysis

## Description / Overview

This project analyzes the impact of air pollution on public health, focusing on asthma-related emergency visits and hospitalizations in Southern California counties. The datasets include air quality measurements (CO and PM2.5) and health outcome data. All data is integrated and stored in a MySQL database hosted on Azure. The goal is to study how pollution exposure affects public health outcomes over time.

## Table of Contents

- [Installation](#installation)  
- [Usage](#usage)  
- [Features](#features)  
- [Contributing](#contributing)  
- [License](#license)  
- [Authors / Credits](#authors--credits)  
- [Contact Information](#contact-information)  
- [References / Acknowledgments](#references--acknowledgments)  

## Installation

1. Set up access credentials to the Azure MySQL database.
2. Clone this repository:
   ```
   git clone <YOUR_REPO_URL>
   cd <YOUR_REPO_DIRECTORY>
   ```
3. Install required Python packages for data analysis and visualization:
   ```
   pip install pandas numpy mysql-connector-python sqlalchemy seaborn matplotlib jupyter
   ```

## Usage

- Connect to the Azure MySQL database `air_quality_analysis`.
- Use provided SQL queries and Python notebooks to merge tables, clean data, and analyze trends.
- Analyze pollution levels by county and link them to asthma-related emergency department visits and hospitalizations.
- Use the Tableau dashboard for visual exploration of trends and insights.

## Database Structure

The database includes multiple tables for pollution and health data:

| Table Name | Description |
|-------------------------------|------------------------------------------------------|
| LA_CO | PM2.5 pollution data for Los Angeles |
| LA_PM | CO pollution data for Los Angeles |
| SD_CO | PM2.5 pollution data for San Diego |
| SD_PM | CO pollution data for San Diego |
| OR_CO | PM2.5 pollution data for Orange County |
| OR_PM | CO pollution data for Orange County |
| SB_CO | PM2.5 pollution data for San Bernardino |
| SC_PM | CO pollution data for San Bernardino |
| CO_data | Combined CO pollution data for all counties |
| PM25_data | Combined PM2.5 pollution data for all counties |
| asthma-emergency-2015_2022 | Asthma emergency department visits |
| asthma-hospitalization-2015_2022 | Asthma hospitalizations |
| asthma_pollution | Asthma ER visits merged with average pollution data |
| hospital_pollution | Asthma hospitalizations merged with average pollution data |

## Features

- Integrated air pollution and health outcome database.
- SQL queries for merging pollution and health datasets.
- Jupyter Notebook for additional analysis and data visualization.
- Tableau dashboard for presenting key findings.
- Supports future expansion with additional EPA and traffic data.

## Contributing

Pull requests are welcome. Please open an issue first to discuss any major changes.

## License

This project is for academic and research purposes only.

## Authors / Credits

- Linden Conrad-Marut
- Marinela Inguito
- Liam Richardson

Organization: University of San Diego

## Contact Information

For questions, please reach out to the project contributors through your university or course platform.

## References / Acknowledgments

- California Department of Public Health asthma data  
- EPA Air Quality data sources  
- Azure MySQL for cloud database hosting  
- Tableau for dashboards and data visualization
