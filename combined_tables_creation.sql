
USE air_quality_analysis;

-- create temporary tables for socal_co
DROP TEMPORARY TABLE IF EXISTS socal_co;
CREATE TEMPORARY TABLE socal_co AS 
    SELECT * FROM la_co 
    UNION ALL 
    SELECT * FROM or_co 
    UNION ALL 
    SELECT * FROM sb_co 
    UNION ALL 
    SELECT * FROM sd_co;

-- create temporary tables for socal_pm
DROP TEMPORARY TABLE IF EXISTS socal_pm;
CREATE TEMPORARY TABLE socal_pm AS 
    SELECT * FROM la_pm 
    UNION ALL 
    SELECT * FROM or_pm 
    UNION ALL 
    SELECT * FROM sb_pm 
    UNION ALL 
    SELECT * FROM sd_pm;

-- create average socal_co table
DROP TEMPORARY TABLE IF EXISTS avg_socal_co;
CREATE TEMPORARY TABLE avg_socal_co AS 
    SELECT County, 
           AVG(Daily_Max_8hr_CO_Concentration) AS avg_co 
    FROM socal_co 
    GROUP BY County;

-- create average socal_pm table
DROP TEMPORARY TABLE IF EXISTS avg_socal_pm;
CREATE TEMPORARY TABLE avg_socal_pm AS 
    SELECT County, 
           AVG(Daily_Mean_PM25_Concentration) AS avg_pm 
    FROM socal_pm 
    GROUP BY County;

-- create asthma_pollution table
DROP TABLE IF EXISTS asthma_pollution;
CREATE TABLE asthma_pollution AS 
    SELECT a.*, 
           c.avg_co, 
           p.avg_pm 
    FROM asthma_ed_visits a 
    INNER JOIN avg_socal_co c ON a.county = c.County 
    INNER JOIN avg_socal_pm p ON a.county = p.County;

-- create hospital_pollution table
DROP TABLE IF EXISTS hospital_pollution;
CREATE TABLE hospital_pollution AS 
    SELECT a.*, 
           c.avg_co, 
           p.avg_pm 
    FROM asthma_hospital_visits a 
    INNER JOIN avg_socal_co c ON a.county = c.County 
    INNER JOIN avg_socal_pm p ON a.county = p.County;