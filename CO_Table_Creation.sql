SHOW databases;
USE air_quality_analysis;

-- Building the co_data table from all 4 counties
/*
ALTER TABLE co_data MODIFY dataset_region VARCHAR(50);
CREATE TABLE co_data AS
SELECT 
    date,
    source,
    site_id,
    poc,
    daily_max_8hr_co_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_description,
    method_code,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'San Diego' AS dataset_region  -- Adding a label for dataset origin
FROM sd_co

UNION ALL

SELECT 
    date,
    source,
    site_id,
    poc,
    daily_max_8hr_co_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_description,
    method_code,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'Oregon' AS dataset_region  -- Adding a label for dataset origin
FROM or_co;

INSERT INTO co_data
SELECT 
    date,
    source,
    site_id,
    poc,
    daily_max_8hr_co_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_description,
    method_code,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'Los Angeles' AS dataset_region
FROM la_co

UNION ALL

SELECT 
    date,
    source,
    site_id,
    poc,
    daily_max_8hr_co_concentration,
    units,
    daily_aqi_value,
    local_site_name,
    daily_obs_count,
    percent_complete,
    aqs_parameter_description,
    method_code,
    cbsa_code,
    cbsa_name,
    state_fips_code,
    state,
    county_fips_code,
    county,
    site_latitude,
    site_longitude,
    'Santa Barbara' AS dataset_region
FROM sb_co;
*/


