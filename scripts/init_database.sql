/*
=============================================================
Creation of the Database and Schemas
=============================================================
Script Objective:
    This script creates a new database named 'Bank_of_Africa_Data_WareHouse'
    after checking if it already exists.
    If the database exists, it is dropped and then recreated.
    In addition, the script creates three schemas within the database:
    'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will completely delete the 'DataWarehouse' database
    if it exists. All data in the database will be permanently lost.
    Please proceed with caution and ensure you have proper backups
    before executing this script.
*/


USE master;
GO

-- Supprimer et recréer la base de données 'Bank_of_Africa'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Bank_of_Africa_Data_WareHouse' )
BEGIN
    ALTER DATABASE Bank_of_Africa_Data_WareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Bank_of_Africa_Data_WareHouse;
END;
GO

-- Créer la base de données 'Bank_of_Africa'
CREATE DATABASE Bank_of_Africa_Data_WareHouse;
GO

USE Bank_of_Africa_Data_WareHouse;
GO

-- Créer les schémas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
