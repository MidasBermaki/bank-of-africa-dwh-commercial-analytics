/*
===================================================================================================================
DDL Script ( Data Definition Language script) : Création des tables du schéma Gold
===================================================================================================================
Objectif du script :
    Ce script crée les tables dans le schéma 'gold', en supprimant les tables 
    existantes si elles sont déja présentes.
    Exécutez ce script pour redéfinir la structure DDL des tables du schéma 'gold'.
===================================================================================================================
===================================================================================================================
DDL Script (Data Definition Language script): Creation of the Bronze Schema Tables
===================================================================================================================
Script Objective:
    This script creates the tables in the 'gold' schema, dropping the existing tables
    if they are already present.
    Run this script to redefine the DDL structure of the tables in the 'gold' schema.
===================================================================================================================
*/
----------------------------------------------------------------------------
------------- Crédit Investisement -----------------------------------------
----------------------------------------------------------------------------
--First Layer 
IF OBJECT_ID('gold.en_cours_crédit_investisement_stage_area', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_crédit_investisement_stage_area;
GO

CREATE TABLE gold.en_cours_crédit_investisement_stage_area(
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                 NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO
--Temp Layer
IF OBJECT_ID('gold.en_cours_crédit_investisement_temporaire', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_crédit_investisement_temporaire;
GO

CREATE TABLE gold.en_cours_crédit_investisement_temporaire  (
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                 NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO

-- Final Layer 
IF OBJECT_ID('gold.en_cours_crédit_investisement_finale', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_crédit_investisement_finale;
GO

CREATE TABLE gold.en_cours_crédit_investisement_finale  (
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                 NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO








------------------------------------------------------------------------
---------------- Excédents de Trésorerie -------------------------------
------------------------------------------------------------------------
IF OBJECT_ID('gold.en_cours_excédents_trésorerie_stage_area', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_excédents_trésorerie_stage_area;
GO


CREATE TABLE gold.en_cours_excédents_trésorerie_stage_area(
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                 NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('gold.en_cours_excédents_trésorerie_temporaire', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_excédents_trésorerie_temporaire;
GO

CREATE TABLE gold.en_cours_excédents_trésorerie_temporaire  (
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                 NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('gold.en_cours_excédents_trésorerie_finale', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_excédents_trésorerie_finale;
GO

CREATE TABLE gold.en_cours_excédents_trésorerie_finale  (
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                 NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO






----------------------------------------------------------------------------
----------- Lignes De Fonctionnement ---------------------------------------
----------------------------------------------------------------------------
IF OBJECT_ID('gold.en_cours_lignes_fonctionnement_stage_area', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_lignes_fonctionnement_stage_area;
GO


CREATE TABLE gold.en_cours_lignes_fonctionnement_stage_area(
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                    NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('gold.en_cours_lignes_fonctionnement_temporaire', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_lignes_fonctionnement_temporaire;
GO

CREATE TABLE gold.en_cours_lignes_fonctionnement_temporaire(
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                    NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('gold.en_cours_lignes_fonctionnement_finale', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_lignes_fonctionnement_finale;
GO

CREATE TABLE gold.en_cours_lignes_fonctionnement_finale(
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                    NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO



----------------------------------------------------------------------
------------- Tables des En Cours tous les Produits ------------------
----------------------------------------------------------------------

IF OBJECT_ID('gold.en_cours_all_products', 'U') IS NOT NULL
    DROP TABLE gold.en_cours_all_products;
GO

CREATE TABLE gold.en_cours_all_products  (
    id_en_cours                 NVARCHAR(20),
    solde                       BIGINT,
    id_entreprise               NVARCHAR(50),
    raison_sociale              NVARCHAR(100),
    secteur_activite            NVARCHAR(50),
    id_produit                  NVARCHAR(20),
    nom_produit                 NVARCHAR(100),
    sous_famille                NVARCHAR(100),
    nom_agence                  NVARCHAR(100),
    region                      NVARCHAR(50),
    ville                       NVARCHAR(50),
    date_premier_engagement     DATE,
    score_risque                DECIMAL(10,2),
    chiffre_affaires_annuel     BIGINT,
    is_cfc                      BIT,
    periode                     NVARCHAR(20),
    date_saisie                 DATE,
    devise                      NVARCHAR(10),
    dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
);
GO

----------------------------------------------------------------------------
-------- les Tables des Historique -----------------------------------------
----------------------------------------------------------------------------
DECLARE @periodes TABLE (periode NVARCHAR(20));

INSERT INTO @periodes (periode)
VALUES 
('2023_mars'), ('2023_juin'), ('2023_septembre'), ('2023_decembre'),
('2024_mars'), ('2024_juin'), ('2024_septembre'), ('2024_decembre'),
('2025_mars'), ('2025_juin');
DECLARE @sql NVARCHAR(MAX);
DECLARE @periode NVARCHAR(20);

DECLARE periode_cursor CURSOR FOR
SELECT periode FROM @periodes;

OPEN periode_cursor;
FETCH NEXT FROM periode_cursor INTO @periode;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @sql = '
    IF OBJECT_ID(''gold.historique_' + @periode + ''', ''U'') IS NULL
    BEGIN
        CREATE TABLE gold.historique_' + @periode + ' (
            id_en_cours                 NVARCHAR(20),
            solde                       BIGINT,
            id_entreprise               NVARCHAR(50),
            raison_sociale              NVARCHAR(100),
            secteur_activite            NVARCHAR(50),
            id_produit                  NVARCHAR(20),
            nom_produit                 NVARCHAR(100),
            sous_famille                NVARCHAR(100),
            nom_agence                  NVARCHAR(100),
            region                      NVARCHAR(50),
            ville                       NVARCHAR(50),
            date_premier_engagement     DATE,
            score_risque                DECIMAL(10,2),
            chiffre_affaires_annuel     BIGINT,
            is_cfc                      BIT,
            periode                     NVARCHAR(20),
            date_saisie                 DATE,
            devise                      NVARCHAR(10),
            dwh_date_insertion          DATETIME2 DEFAULT GETDATE()
        );
    END';

    EXEC sp_executesql @sql;

    FETCH NEXT FROM periode_cursor INTO @periode;
END

CLOSE periode_cursor;
DEALLOCATE periode_cursor;
