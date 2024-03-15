# Assigning Data Type
ALTER TABLE `pdp_db`.`commodities_code`
MODIFY COLUMN Commo_code VARCHAR(10) NOT NULL,
MODIFY COLUMN C_Name VARCHAR(45) NOT NULL,
ADD PRIMARY KEY (Commo_code);
