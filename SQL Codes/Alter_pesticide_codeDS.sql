# Assigning datatypes and a primary key
ALTER TABLE `pdp_db`.`pesticides_list` 
CHANGE COLUMN `Pest_Code` `Pest_Code` VARCHAR(10) NOT NULL ,
CHANGE COLUMN `Pesticide_Name` `Pesticide_Name` TEXT NOT NULL ,
CHANGE COLUMN `Test_Class` `Test_Class` TEXT NOT NULL ,
ADD PRIMARY KEY (`Pest_Code`);
;
