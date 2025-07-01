SHOW databases;
USE air_quality_analysis;

SHOW TABLES;

/*
-- Updating Los Angeles PM2.5 Table (ad_viz_plotval_data) to add a County Column
ALTER TABLE ad_viz_plotval_data
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data
SET County = 'Los Angeles';

RENAME TABLE ad_viz_plotval_data TO LA_PM;

-- Updating Los Angeles CO Table (ad_viz_plotval_data_2) to add a County Column and changing the table name
ALTER TABLE ad_viz_plotval_data_2
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data_2
SET County = 'Los Angeles';

RENAME TABLE ad_viz_plotval_data_2 TO LA_CO;

-- Updating San Diego PM2.5 Table (ad_viz_plotval_data_4) to add a County Columnand changing the table name
ALTER TABLE ad_viz_plotval_data_4
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data_4
SET County = 'San Diego';

RENAME TABLE ad_viz_plotval_data_4 TO SD_PM;

-- Updating San Diego CO Table (ad_viz_plotval_data_10) to add a County Column and changing the table name
ALTER TABLE ad_viz_plotval_data_10
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data_10
SET County = 'San Diego';

RENAME TABLE ad_viz_plotval_data_10 TO SD_CO;

-- Updating San Bernadino CO Table (ad_viz_plotval_data_6) and changing the table name
ALTER TABLE ad_viz_plotval_data_6
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data_6
SET County = 'San Bernadino';

RENAME TABLE ad_viz_plotval_data_6 TO SB_CO;

-- Updating San Bernadino PM2.5 Table (ad_viz_plotval_data_11) and changing the table name
ALTER TABLE ad_viz_plotval_data_11
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data_11
SET County = 'San Bernadino';

RENAME TABLE ad_viz_plotval_data_11 TO SB_PM;

-- Updating Orange CO Table (ad_viz_plotval_data_9) and changing the table name
ALTER TABLE ad_viz_plotval_data_9
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data_9
SET County = 'Orange';

RENAME TABLE ad_viz_plotval_data_9 TO OR_CO;

-- Updating Orange PM2.5 Table (ad_viz_plotval_data_8) and changing the table name
ALTER TABLE ad_viz_plotval_data_8
ADD COLUMN County VARCHAR(20);

UPDATE ad_viz_plotval_data_8
SET County = 'Orange';

RENAME TABLE ad_viz_plotval_data_8 TO OR_PM;

*/


