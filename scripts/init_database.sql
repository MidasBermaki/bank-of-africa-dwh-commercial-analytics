/*
=============================================================
Création de la base de données et des schémas
=============================================================
Objectif du script :
    Ce script crée une nouvelle base de données nommée 'Bank_of_africa' après avoir vérifié si elle existe déjà.
    Si la base de données existe, elle est supprimée puis recréée. De plus, le script crée trois schémas 
    au sein de la base : 'bronze', 'silver' et 'gold'.
	
AVERTISSEMENT :
    L'exécution de ce script supprimera entièrement la base de données 'DataWarehouse' si elle existe.
    Toutes les données de la base seront définitivement perdues. Veuillez procéder avec prudence 
    et vous assurer d'avoir des sauvegardes adéquates avant d'exécuter ce script.
*/

USE master;
GO

-- Supprimer et recréer la base de données 'Bank_of_Africa'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Bank_of_Africa' )
BEGIN
    ALTER DATABASE Bank_of_Africa SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Bank_of_Africa;
END;
GO

-- Créer la base de données 'Bank_of_Africa'
CREATE DATABASE Bank_of_Africa;
GO

USE Bank_of_Africa;
GO

-- Créer les schémas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold
