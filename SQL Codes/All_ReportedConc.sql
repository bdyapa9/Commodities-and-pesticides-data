# Pertinent Database
USE pdp_db;

# Samples from agencies with reported residue of pesticide concentrations:
CREATE TABLE ALL_reportedconc AS(
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
FROM ALL_reportedconc
ORDER BY conc DESC;
