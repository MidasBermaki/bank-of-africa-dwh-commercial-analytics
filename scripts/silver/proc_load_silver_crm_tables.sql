/*
===============================================================================
Stored Procedure: Load Silver Layer (Bronze -> Silver)
===============================================================================
Script Purpose:
    This stored procedure performs the ETL (Extract, Transform, Load) process to 
    populate the 'silver' schema tables from the 'bronze' schema.
	Actions Performed:
		- Truncates Silver tables.
		- Inserts transformed and cleansed data from Bronze into Silver tables.
		
Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC Silver.load_silver;
===============================================================================
===============================================================================
Procédure stockée : Chargement de la couche Silver (Bronze -> Silver)
===============================================================================
Objectif du script :
    Cette procédure stockée exécute le processus ETL (Extract, Transform, Load) 
    pour alimenter les tables du schéma 'silver' à partir des données du schéma 'bronze'.
	Actions effectuées :
		- Tronque (vide) les tables Silver.
		- Insère les données transformées et nettoyées provenant des tables Bronze dans les tables Silver.
		
Paramètres :
    Aucun.
    Cette procédure stockée n'accepte aucun paramètre et ne retourne aucune valeur.

Exemple d’utilisation :
    EXEC Silver.load_silver;
===============================================================================
*/
CREATE OR ALTER PROCEDURE silver.load_silver_crm_tables AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 
    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '================================================';
        PRINT 'Loading Silver Layer';
        PRINT '================================================';

		PRINT '------------------------------------------------';
		PRINT 'Loading CRM Tables';
		PRINT '------------------------------------------------';
		--------------------------------------------------------------------------------
		--------------------------- En Cours CMLT --------------------------------------✅
		--------------------------------------------------------------------------------
		---- En Cours CMLT CAF 1
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_1_en_cours_cmlt';
		TRUNCATE TABLE silver.crm_caf_1_en_cours_cmlt;
		PRINT '>> Inserting Data Into: silver.crm_caf_1_en_cours_cmlt';
		INSERT INTO silver.crm_caf_1_en_cours_cmlt(
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut, 
				montant_autorise,
				déblockage, 
				amortisement,
				solde,
				taux_credit
		)
		SELECT
			TRIM(id_en_cours) AS id_en_cours,
			CASE 
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
				ELSE 'n/a'
			END AS id_agence,
			TRIM(id_entreprise) as id_entreprise,
			TRIM(id_produit) AS id_produit,
			CASE 
			-- MAD : Dirham Marocain
			WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
			-- EUR : Euro
			WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
			-- USD : Dollar Américain
			WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
			-- AED : Dirham Émirati
			WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
			ELSE 'n/a'
			END AS devise,

			TRIM(source_donnee) AS source_donnee,
			date_saisie,
			CASE 
				WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
				ELSE 'n/a'
			END AS statut,
			montant_autorise,
			deblockage,
			amortisement,
			solde,
			taux_credit
		from bronze.crm_caf_1_en_cours_cmlt;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours CMLT CAF 2
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_2en_cours_cmlt';
		TRUNCATE TABLE silver.crm_caf_2_en_cours_cmlt;
		PRINT '>> Inserting Data Into: silver.crm_caf_2_en_cours_cmlt';
		INSERT INTO silver.crm_caf_2_en_cours_cmlt(
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut, 
				montant_autorise,
				déblockage, 
				amortisement,
				solde,
				taux_credit
		)
		SELECT
			TRIM(id_en_cours) AS id_en_cours,
			CASE 
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
				ELSE 'n/a'
			END AS id_agence,
			TRIM(id_entreprise) as id_entreprise,
			TRIM(id_produit) AS id_produit,
			CASE 
			-- MAD : Dirham Marocain
			WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
			-- EUR : Euro
			WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
			-- USD : Dollar Américain
			WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
			-- AED : Dirham Émirati
			WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
			ELSE 'n/a'
			END AS devise,

			TRIM(source_donnee) AS source_donnee,
			date_saisie,
			CASE 
				WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
				ELSE 'n/a'
			END AS statut,
			montant_autorise,
			deblockage,
			amortisement,
			solde,
			taux_credit
			from bronze.crm_caf_2_en_cours_cmlt;
			SET @end_time = GETDATE();
			PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
			PRINT '>> -------------';

		--------------------------------------------------------------------------------
		---- En Cours CMLT CAF 3
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_3_en_cours_cmlt';
		TRUNCATE TABLE silver.crm_caf_3_en_cours_cmlt;
		PRINT '>> Inserting Data Into: silver.crm_caf_3_en_cours_cmlt';
		INSERT INTO silver.crm_caf_3_en_cours_cmlt(
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut, 
				montant_autorise,
				déblockage, 
				amortisement,
				solde,
				taux_credit
		)
		SELECT
			TRIM(id_en_cours) AS id_en_cours,
			CASE 
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
				ELSE 'n/a'
			END AS id_agence,
			TRIM(id_entreprise) as id_entreprise,
			TRIM(id_produit) AS id_produit,
			CASE 
			-- MAD : Dirham Marocain
			WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
			-- EUR : Euro
			WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
			-- USD : Dollar Américain
			WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
			-- AED : Dirham Émirati
			WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
			ELSE 'n/a'
			END AS devise,

			TRIM(source_donnee) AS source_donnee,
			date_saisie,
			CASE 
				WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
				ELSE 'n/a'
			END AS statut,
			montant_autorise,
			deblockage,
			amortisement,
			solde,
			taux_credit
		from bronze.crm_caf_3_en_cours_cmlt;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours CMLT CAF 4
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_4_en_cours_cmlt';
		TRUNCATE TABLE silver.crm_caf_4_en_cours_cmlt;
		PRINT '>> Inserting Data Into: silver.crm_caf_4_en_cours_cmlt';
		INSERT INTO silver.crm_caf_4_en_cours_cmlt(
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut, 
				montant_autorise,
				déblockage, 
				amortisement,
				solde,
				taux_credit
		)
		SELECT
			TRIM(id_en_cours) AS id_en_cours,
			CASE 
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
				ELSE 'n/a'
			END AS id_agence,
			TRIM(id_entreprise) as id_entreprise,
			TRIM(id_produit) AS id_produit,
			CASE 
			-- MAD : Dirham Marocain
			WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
			-- EUR : Euro
			WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
			-- USD : Dollar Américain
			WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
			-- AED : Dirham Émirati
			WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
			ELSE 'n/a'
			END AS devise,

			TRIM(source_donnee) AS source_donnee,
			date_saisie,
			CASE 
				WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
				ELSE 'n/a'
			END AS statut,
			montant_autorise,
			deblockage,
			amortisement,
			solde,
			taux_credit
		from bronze.crm_caf_4_en_cours_cmlt;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours CMLT CAF 5
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_5_en_cours_cmlt';
		TRUNCATE TABLE silver.crm_caf_5_en_cours_cmlt;
		PRINT '>> Inserting Data Into: silver.crm_caf_5_en_cours_cmlt';
		INSERT INTO silver.crm_caf_5_en_cours_cmlt(
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut, 
				montant_autorise,
				déblockage, 
				amortisement,
				solde,
				taux_credit
		)
		SELECT
			TRIM(id_en_cours) AS id_en_cours,
			CASE 
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
				ELSE 'n/a'
			END AS id_agence,
			TRIM(id_entreprise) as id_entreprise,
			TRIM(id_produit) AS id_produit,
			CASE 
			-- MAD : Dirham Marocain
			WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
			-- EUR : Euro
			WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
			-- USD : Dollar Américain
			WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
			-- AED : Dirham Émirati
			WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
			ELSE 'n/a'
			END AS devise,

			TRIM(source_donnee) AS source_donnee,
			date_saisie,
			CASE 
				WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
				ELSE 'n/a'
			END AS statut,
			montant_autorise,
			deblockage,
			amortisement,
			solde,
			taux_credit
		from bronze.crm_caf_5_en_cours_cmlt;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours CMLT CAF 6
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_6_en_cours_cmlt';
		TRUNCATE TABLE silver.crm_caf_6_en_cours_cmlt;
		PRINT '>> Inserting Data Into: silver.crm_caf_6_en_cours_cmlt';
		INSERT INTO silver.crm_caf_6_en_cours_cmlt(
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut, 
				montant_autorise,
				déblockage, 
				amortisement,
				solde,
				taux_credit
		)
		SELECT
			TRIM(id_en_cours) AS id_en_cours,
			CASE 
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
				WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
				ELSE 'n/a'
			END AS id_agence,
			TRIM(id_entreprise) as id_entreprise,
			TRIM(id_produit) AS id_produit,
			CASE 
			-- MAD : Dirham Marocain
			WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
			-- EUR : Euro
			WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
			-- USD : Dollar Américain
			WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
			-- AED : Dirham Émirati
			WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
			ELSE 'n/a'
			END AS devise,

			TRIM(source_donnee) AS source_donnee,
			date_saisie,
			CASE 
				WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
				WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
				ELSE 'n/a'
			END AS statut,
			montant_autorise,
			deblockage,
			amortisement,
			solde,
			taux_credit
		from bronze.crm_caf_6_en_cours_cmlt;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		--------------------------------------------------------------------------------
		--------------------------- En Cours Dépot -------------------------------------✅
		--------------------------------------------------------------------------------
		---- En Cours Dépot CAF 1
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_1_en_cours_depot';
		TRUNCATE TABLE silver.crm_caf_1_en_cours_depot;
		PRINT '>> Inserting Data Into: silver.crm_caf_1_en_cours_depot';
		INSERT INTO silver.crm_caf_1_en_cours_depot( 
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut,  
				solde,
				taux_remuneration
		)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				solde,
				taux_remuneration
		FROM bronze.crm_caf_1_en_cours_depot;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours Dépot CAF 2
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_2_en_cours_depot';
		TRUNCATE TABLE silver.crm_caf_2_en_cours_depot;
		PRINT '>> Inserting Data Into: silver.crm_caf_2_en_cours_depot';
		INSERT INTO silver.crm_caf_2_en_cours_depot( 
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut,  
				solde,
				taux_remuneration
		)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				solde,
				taux_remuneration
		FROM bronze.crm_caf_2_en_cours_depot;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		--------------------------------------------------------------------------------
		---- En Cours Dépot CAF 3
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_3_en_cours_depot';
		TRUNCATE TABLE silver.crm_caf_3_en_cours_depot;
		PRINT '>> Inserting Data Into: silver.crm_caf_3_en_cours_depot';
		INSERT INTO silver.crm_caf_3_en_cours_depot( 
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut,  
				solde,
				taux_remuneration
		)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				solde,
				taux_remuneration
		FROM bronze.crm_caf_3_en_cours_depot;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		--------------------------------------------------------------------------------
		---- En Cours Dépot CAF 4
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_4_en_cours_depot';
		TRUNCATE TABLE silver.crm_caf_4_en_cours_depot;
		PRINT '>> Inserting Data Into: silver.crm_caf_4_en_cours_depot';
		INSERT INTO silver.crm_caf_4_en_cours_depot( 
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut,  
				solde,
				taux_remuneration
		)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				solde,
				taux_remuneration
		FROM bronze.crm_caf_4_en_cours_depot;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		--------------------------------------------------------------------------------
		---- En Cours Dépot CAF 5
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_5_en_cours_depot';
		TRUNCATE TABLE silver.crm_caf_5_en_cours_depot;
		PRINT '>> Inserting Data Into: silver.crm_caf_5_en_cours_depot';
		INSERT INTO silver.crm_caf_5_en_cours_depot( 
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut,  
				solde,
				taux_remuneration
		)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				solde,
				taux_remuneration
		FROM bronze.crm_caf_5_en_cours_depot;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours Dépot CAF 6
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_6_en_cours_depot';
		TRUNCATE TABLE silver.crm_caf_6_en_cours_depot;
		PRINT '>> Inserting Data Into: silver.crm_caf_6_en_cours_depot';
		INSERT INTO silver.crm_caf_6_en_cours_depot( 
				id_en_cours,
				id_agence,
				id_entreprise,
				id_produit,
				devise,
				source_donnee,
				date_saisie,
				statut,  
				solde,
				taux_remuneration
		)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				solde,
				taux_remuneration
		FROM bronze.crm_caf_6_en_cours_depot;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		--------------------------- En Cours Ligne de Fonctionement --------------------✅
		--------------------------------------------------------------------------------
		---- En Cours Ligne de Fonctionement CAF 1
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_1_en_cours_ldf';
		TRUNCATE TABLE silver.crm_caf_1_en_cours_ldf;
		PRINT '>> Inserting Data Into: silver.crm_caf_1_en_cours_ldf';
		INSERT INTO silver.crm_caf_1_en_cours_ldf(
			id_en_cours,
			id_agence,
			id_entreprise,
			id_produit,
			devise, source_donnee,
			date_saisie, 
			statut,
			montant_autorise,
			solde,
			taux_interet)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				montant_autorise,
				solde,
				taux_interet
		FROM bronze.crm_caf_1_en_cours_ldf;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours Ligne de Fonctionement CAF 2
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_2_en_cours_ldf';
		TRUNCATE TABLE silver.crm_caf_2_en_cours_ldf;
		PRINT '>> Inserting Data Into: silver.crm_caf_2_en_cours_ldf';
		INSERT INTO silver.crm_caf_2_en_cours_ldf(
			id_en_cours,
			id_agence,
			id_entreprise,
			id_produit,
			devise, source_donnee,
			date_saisie, 
			statut,
			montant_autorise,
			solde,
			taux_interet)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				montant_autorise,
				solde,
				taux_interet
		FROM bronze.crm_caf_2_en_cours_ldf;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours Ligne de Fonctionement CAF 3
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_3_en_cours_ldf';
		TRUNCATE TABLE silver.crm_caf_3_en_cours_ldf;
		PRINT '>> Inserting Data Into: silver.crm_caf_3_en_cours_ldf';
		INSERT INTO silver.crm_caf_3_en_cours_ldf(
			id_en_cours,
			id_agence,
			id_entreprise,
			id_produit,
			devise, source_donnee,
			date_saisie, 
			statut,
			montant_autorise,
			solde,
			taux_interet)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				montant_autorise,
				solde,
				taux_interet
		FROM bronze.crm_caf_3_en_cours_ldf;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours Ligne de Fonctionement CAF 4
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_4_en_cours_ldf';
		TRUNCATE TABLE silver.crm_caf_4_en_cours_ldf;
		PRINT '>> Inserting Data Into: silver.crm_caf_4_en_cours_ldf';
		INSERT INTO silver.crm_caf_4_en_cours_ldf(
			id_en_cours,
			id_agence,
			id_entreprise,
			id_produit,
			devise, source_donnee,
			date_saisie, 
			statut,
			montant_autorise,
			solde,
			taux_interet)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				montant_autorise,
				solde,
				taux_interet
		FROM bronze.crm_caf_4_en_cours_ldf;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours Ligne de Fonctionement CAF 5
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_5_en_cours_ldf';
		TRUNCATE TABLE silver.crm_caf_5_en_cours_ldf;
		PRINT '>> Inserting Data Into: silver.crm_caf_5_en_cours_ldf';
		INSERT INTO silver.crm_caf_5_en_cours_ldf(
			id_en_cours,
			id_agence,
			id_entreprise,
			id_produit,
			devise, source_donnee,
			date_saisie, 
			statut,
			montant_autorise,
			solde,
			taux_interet)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				montant_autorise,
				solde,
				taux_interet
		FROM bronze.crm_caf_5_en_cours_ldf;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		--------------------------------------------------------------------------------
		---- En Cours Ligne de Fonctionement CAF 6
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_caf_6_en_cours_ldf';
		TRUNCATE TABLE silver.crm_caf_6_en_cours_ldf;
		PRINT '>> Inserting Data Into: silver.crm_caf_6_en_cours_ldf';
		INSERT INTO silver.crm_caf_6_en_cours_ldf(
			id_en_cours,
			id_agence,
			id_entreprise,
			id_produit,
			devise, source_donnee,
			date_saisie, 
			statut,
			montant_autorise,
			solde,
			taux_interet)
		SELECT  
				TRIM(id_en_cours) AS id_en_cours,
				CASE 
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_1' THEN 'CAF-1'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_2' THEN 'CAF-2'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_3' THEN 'CAF-3'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_4' THEN 'CAF-4'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_5' THEN 'CAF-5'
					WHEN UPPER(TRIM(id_agence) ) = 'CAF_6' THEN 'CAF-6'
					ELSE 'n/a'
				END AS id_agence,
				TRIM(id_entreprise) as id_entreprise,
				TRIM(id_produit) AS id_produit,
				CASE 
				-- MAD : Dirham Marocain
				WHEN TRIM(devise) IN ('mad', 'MAD', 'dh', 'DH', 'dirham', 'DIRHAM') THEN 'MAD'
    
				-- EUR : Euro
				WHEN TRIM(devise) IN ('eur', 'EUR', 'euro', 'EURO', '€') THEN 'EUR'
    
				-- USD : Dollar Américain
				WHEN TRIM(devise) IN ('usd', 'USD', 'dollar', 'DOLLAR', '$', 'us dollar', 'US DOLLAR') THEN 'USD'
    
				-- AED : Dirham Émirati
				WHEN TRIM(devise) IN ('aed', 'AED', 'dirham emirati', 'DIRHAM EMIRATI', 'dirham émirati', 'DIRHAM ÉMIRATI', 'د.إ') THEN 'AED'
    
				ELSE 'n/a'
				END AS devise,

				TRIM(source_donnee) AS source_donnée,
				date_saisie,
				CASE 
					WHEN TRIM(statut)  = 'En cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'en cours' THEN 'En Cours'
					WHEN TRIM(statut)  = 'EN COURS' THEN 'En Cours'
					ELSE 'n/a'
				END AS statut, 
				montant_autorise,
				solde,
				taux_interet
		FROM bronze.crm_caf_6_en_cours_ldf;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		
		SET @batch_end_time = GETDATE();
		PRINT '=========================================='
		PRINT 'Loading Silver Layer is Completed';
        PRINT '   - Total Load Duration: ' + CAST(DATEDIFF(SECOND, @batch_start_time, @batch_end_time) AS NVARCHAR) + ' seconds';
		PRINT '=========================================='
		
		END TRY
		BEGIN CATCH
			PRINT '=========================================='
			PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER'
			PRINT 'Error Message' + ERROR_MESSAGE();
			PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
			PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
			PRINT '=========================================='
		END CATCH
	END

