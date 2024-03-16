# Our Dashboard dataset/table:
CREATE TABLE dash_table AS (
SELECT i_all.sample_pk,
       i_all.commodity,
       i_all.Commo_code,
       i_all.commtype,
       i_all.pest_code,
       i_all.pesticide,
       i_all.conc,
       i_all.conc_units,
       i_all.extract,
       i_all.facility,
       i_all.State,
       i_all.Agency_Name,
       i_all.City,
       t.EPA_TV,
       t.Tol_conc_units AS TV_units,
       o.origin AS sample_origin,
       o.Country_code AS origin_country
FROM insights_report_all AS i_all
LEFT JOIN tolerances AS t ON i_all.pest_code = t.PesticideCode
LEFT JOIN pdp2022_samples AS o ON i_all.sample_pk = o.Sample_pk
WHERE i_all.Commo_code = t.CommCode
ORDER BY i_all.conc_units DESC
);

# Filling all the rows of 'origin_country' as '100' for every sample originated in USA (domestic)
UPDATE pdp_db.dash_table
SET origin_country = '100'
WHERE sample_origin = 1 AND (origin_country IS NULL OR origin_country = '');

UPDATE pdp_db.dash_table
SET origin_country = '111'
WHERE sample_origin = 3 AND (origin_country IS NULL OR origin_country = '');
