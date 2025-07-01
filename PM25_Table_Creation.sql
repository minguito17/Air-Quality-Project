-- Creating the PM2.5 table from all four counties

CREATE TABLE pm25_data (
    my_row_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    source VARCHAR(50),
    site_id VARCHAR(20), 
    poc INT,
    daily_mean_pm25_concentration FLOAT,
    units VARCHAR(50),  
    daily_aqi_value INT,
    local_site_name VARCHAR(100),
    daily_obs_count INT,
    percent_complete INT,  
    aqs_parameter_code VARCHAR(10),
    aqs_parameter_description VARCHAR(100),
    method_code VARCHAR(20),  
    method_description VARCHAR(255),
    cbsa_code VARCHAR(10),  
    cbsa_name VARCHAR(100),
    state_fips_code VARCHAR(10), 
    state VARCHAR(50),
    county_fips_code VARCHAR(10), 
    county VARCHAR(50),
    site_latitude FLOAT,
    site_longitude FLOAT,
    dataset_region VARCHAR(50) 
);

INSERT INTO pm25_data
SELECT 
    NULL,  -- `my_row_id` is AUTO_INCREMENT, so we insert NULL
    date,
    source,
    site_id,
    poc,
    daily_mean_pm25_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_code,
    aqs_parameter_description,
    method_code,
    method_description,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'San Diego' AS dataset_region
FROM sd_pm

UNION ALL

SELECT 
    NULL,
    date,
    source,
    site_id,
    poc,
    daily_mean_pm25_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_code,
    aqs_parameter_description,
    method_code,
    method_description,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'Oregon' AS dataset_region
FROM or_pm

UNION ALL

SELECT 
    NULL,
    date,
    source,
    site_id,
    poc,
    daily_mean_pm25_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_code,
    aqs_parameter_description,
    method_code,
    method_description,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'Los Angeles' AS dataset_region
FROM la_pm

UNION ALL

SELECT 
    NULL,
    date,
    source,
    site_id,
    poc,
    daily_mean_pm25_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_code,
    aqs_parameter_description,
    method_code,
    method_description,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'Santa Barbara' AS dataset_region
FROM sb_pm;

SHOW TABLES;