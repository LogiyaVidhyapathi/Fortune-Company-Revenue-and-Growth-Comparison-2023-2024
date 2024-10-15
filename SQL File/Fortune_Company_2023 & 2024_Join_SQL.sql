CREATE DATABASE fortune_companies_db;

USE fortune_companies_db;

ALTER TABLE fortune2023 ADD PRIMARY KEY (2023_Company);
ALTER TABLE fortune2024 ADD PRIMARY KEY (2024_Company);

ALTER TABLE fortune2023
DROP COLUMN 2023_Ticker,
DROP COLUMN 2023_Country,
DROP COLUMN 2023_Website,
DROP COLUMN 2023_Footnote,
DROP COLUMN 2023_Updated;

ALTER TABLE fortune2024
DROP COLUMN 2024_Ticker,
DROP COLUMN 2024_Country,
DROP COLUMN 2024_Website,
DROP COLUMN 2024_Footnote,
DROP COLUMN 2024_Updated;

SELECT f23.*, f24.*
FROM fortune2023 f23
LEFT JOIN fortune2024 f24
ON f23.`2023_Company` = f24.`2024_Company`

UNION

SELECT f23.*, f24.* 
FROM fortune2023 f23 
RIGHT JOIN fortune2024 f24
ON f23.`2023_Company` = f24.`2024_Company`;

CREATE VIEW fortune_2023_and_2024 AS
SELECT f23.*, f24.*
FROM fortune2023 f23
LEFT JOIN fortune2024 f24
ON f23.`2023_Company` = f24.`2024_Company`

UNION

SELECT f23.*, f24.* 
FROM fortune2023 f23 
RIGHT JOIN fortune2024 f24
ON f23.`2023_Company` = f24.`2024_Company`;

