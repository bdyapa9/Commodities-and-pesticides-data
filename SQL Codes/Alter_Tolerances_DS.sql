ALTER TABLE `pdp_db`.`tolerances` 
CHANGE COLUMN `PesticideCode` `PesticideCode` VARCHAR(10) NOT NULL ,
CHANGE COLUMN `CommCode` `CommCode` TEXT NOT NULL ,
CHANGE COLUMN `EPA_TV` `EPA_TV` TEXT NOT NULL ,
CHANGE COLUMN `conc_units` `conc_units` TEXT NOT NULL ,
ADD INDEX `Pest_code_idx` (`PesticideCode` ASC) VISIBLE;
;
ALTER TABLE `pdp_db`.`tolerances` 
ADD CONSTRAINT `Pest_code`
  FOREIGN KEY (`PesticideCode`)
  REFERENCES `pdp_db`.`pesticides_list` (`Pest_Code`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
