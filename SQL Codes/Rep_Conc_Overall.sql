# Pertinent Database
USE pdp_db;

# Commodities with reported concentrations:
CREATE TABLE conc_overall AS(
SELECT * 
FROM (
		SELECT *
        FROM pdp_db.pdp2022_results as r
		ORDER BY conc DESC
	) AS t
WHERE conc > '0'
);

# View the table
SELECT *
FROM conc_overall
ORDER BY conc DESC;
