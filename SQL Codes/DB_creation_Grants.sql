# ------------------Granting permissions to access and export files------------------
SHOW VARIABLES LIKE 'secure_file_priv';
GRANT FILE ON *.* TO root@localhost;
# -----------------------------------------------------------------------------------
CREATE SCHEMA IF NOT EXISTS pdp_db; # created DB
