CREATE VIEW insights_report_ALL AS
SELECT co.sample_pk AS sample_pk,
		cc.C_Name AS commodity,
        cc.Commo_code,
        co.commtype,
		co.pest_code,
		pl.Pesticide_Name AS pesticide,
        co.conc,
        co.conc_units,
        co.extract, 
        s22.Distrib_type AS facility,
        s22.State AS State,
        l.Agency_Name,
        l.City
FROM conc_overall AS co
LEFT JOIN commodities_code AS cc ON co.commod = cc.Commo_code
LEFT JOIN pesticides_list AS pl ON co.pest_code = pl.Pest_Code
LEFT JOIN pdp2022_samples AS s22 ON co.sample_pk = s22.sample_pk
LEFT JOIN labs AS l ON co.lab = l.Lab_Code
ORDER BY co.conc DESC;
