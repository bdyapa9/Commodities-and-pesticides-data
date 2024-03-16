# ------------------Granting permissions to access and export files------------------
SHOW VARIABLES LIKE 'secure_file_priv';
GRANT FILE ON *.* TO root@localhost;
#SHOW VARIABLES LIKE "secure_file_priv";
# -----------------------------------------------------------------------------------

# ------proper DB------
USE pdp_db;
# ---------------------
# Create the table
CREATE TABLE `pdp_db`.`pdp2022_results` (
  `sample_pk` INT NULL,
  `commod` VARCHAR(45) NULL,
  `commtype` VARCHAR(45) NULL,
  `lab` VARCHAR(45) NULL,
  `pest_code` VARCHAR(45) NULL,
  `test_class` VARCHAR(45) NULL,
  `conc` VARCHAR(45) NULL,
  `lim_detection` VARCHAR(45) NULL,
  `conc_units` VARCHAR(45) NULL,
  `confirm_method` VARCHAR(45) NULL,
  `confirm_method2` VARCHAR(45) NULL,
  `annotate` VARCHAR(45) NULL,
  `quantitative` VARCHAR(45) NULL,
  `mean` VARCHAR(45) NULL,
  `extract` VARCHAR(45) NULL,
  `determinative_method` VARCHAR(45) NULL);

# Importing the data into the PDP_DB
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/PDP22Results.txt' INTO TABLE pdp2022_results
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';
