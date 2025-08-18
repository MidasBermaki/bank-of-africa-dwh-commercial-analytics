/*
=========================================================================================================================
Procédure stockée : Chargement de la couche Bronze (Source -> Bronze)
=========================================================================================================================
Objectif du script :
    Cette procédure stockée charge les données dans le schéma 'bronze' à partir de fichiers CSV externes.
    Elle effectue les actions suivantes :
    - Tronque les tables du schéma bronze avant de charger les données.
    - Utilise la commande `BULK INSERT` pour importer les données des fichiers CSV vers les tablebronze.e.

Paramétres :
    Aucun.
    Cette procédure stockée n'accepte aucun paramétre et ne retourne aucune valeur.

Exemple d'utilisation :
    EXEC bronze.load_bronze;
=========================================================================================================================
=========================================================================================================================
Stored Procedure: Loading the Bronze Layer (Source -> Bronze)
=========================================================================================================================
Script Objective:
    This stored procedure loads data into the 'bronze' schema from external CSV files.
    It performs the following actions:
    - Truncates the tables in the bronze schema before loading the data.
    - Uses the `BULK INSERT` command to import data from the CSV files into the bronze tables.

Parameters:
    None.
    This stored procedure does not accept any parameters and does not return any value.

Example usage:
    EXEC bronze.load_bronze;
=========================================================================================================================
*/


-------------------------------------------------------------------------------------------------------------------------
----------------------------- Mars------- 2023---------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 
	BEGIN TRY
		SET @batch_start_time = GETDATE();
		PRINT '================================================';
		PRINT 'Loading Bronze Layer';
		PRINT '================================================';

		PRINT '------------------------------------------------';
		PRINT 'Loading CRM Tables';
		PRINT '------------------------------------------------';
		-------------------------------------------------------------------------------------
		-- Crédits d'Investissement----------------------------------------------------------
		-------------------------------------------------------------------------------------
		--- CAF-1----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_1_en_cours_cmlt';
		TRUNCATE TABLE bronze.crm_caf_1_en_cours_cmlt;
		PRINT '>> Inserting Data Into: bronze.crm_caf_1_en_cours_cmlt';
		BULK INSERT bronze.crm_caf_1_en_cours_cmlt
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_CMLT\CMLT_En_Cours_CAF_1_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-2----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_2_en_cours_cmlt';
		TRUNCATE TABLE bronze.crm_caf_2_en_cours_cmlt;
		PRINT '>> Inserting Data Into: bronze.crm_caf_2_en_cours_cmlt';
		BULK INSERT bronze.crm_caf_2_en_cours_cmlt
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_CMLT\CMLT_En_Cours_CAF_2_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-3----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_3_en_cours_cmlt';
		TRUNCATE TABLE bronze.crm_caf_3_en_cours_cmlt;
		PRINT '>> Inserting Data Into: bronze.crm_caf_3_en_cours_cmlt';
		BULK INSERT bronze.crm_caf_3_en_cours_cmlt
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_CMLT\CMLT_En_Cours_CAF_3_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-4----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_4_en_cours_cmlt';
		TRUNCATE TABLE bronze.crm_caf_4_en_cours_cmlt;
		PRINT '>> Inserting Data Into: bronze.crm_caf_4_en_cours_cmlt';
		BULK INSERT bronze.crm_caf_4_en_cours_cmlt
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_CMLT\CMLT_En_Cours_CAF_4_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-5----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_5_en_cours_cmlt';
		TRUNCATE TABLE bronze.crm_caf_5_en_cours_cmlt;
		PRINT '>> Inserting Data Into: bronze.crm_caf_5_en_cours_cmlt';
		BULK INSERT bronze.crm_caf_5_en_cours_cmlt
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_CMLT\CMLT_En_Cours_CAF_5_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-6----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_6_en_cours_cmlt';
		TRUNCATE TABLE bronze.crm_caf_6_en_cours_cmlt;
		PRINT '>> Inserting Data Into: bronze.crm_caf_6_en_cours_cmlt';
		BULK INSERT bronze.crm_caf_6_en_cours_cmlt
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_CMLT\CMLT_En_Cours_CAF_6_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--Excédents de Trésorerie
		-------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		--- CAF-1----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_1_en_cours_depot';
		TRUNCATE TABLE bronze.crm_caf_1_en_cours_depot;
		PRINT '>> Inserting Data Into: bronze.crm_caf_1_en_cours_depot';
		BULK INSERT bronze.crm_caf_1_en_cours_depot
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_Depot\Depot_En_Cours_CAF_1_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-2----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_2_en_cours_depot';
		TRUNCATE TABLE bronze.crm_caf_2_en_cours_depot;
		PRINT '>> Inserting Data Into: bronze.crm_caf_2_en_cours_depot';
		BULK INSERT bronze.crm_caf_2_en_cours_depot
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_Depot\Depot_En_Cours_CAF_2_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-3----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_3_en_cours_depot';
		TRUNCATE TABLE bronze.crm_caf_3_en_cours_depot;
		PRINT '>> Inserting Data Into: bronze.crm_caf_3_en_cours_depot';
		BULK INSERT bronze.crm_caf_3_en_cours_depot
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_Depot\Depot_En_Cours_CAF_3_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-4----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_4_en_cours_depot';
		TRUNCATE TABLE bronze.crm_caf_4_en_cours_depot;
		PRINT '>> Inserting Data Into: bronze.crm_caf_4_en_cours_depot';
		BULK INSERT bronze.crm_caf_4_en_cours_depot
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_Depot\Depot_En_Cours_CAF_4_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-5----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_5_en_cours_depot';
		TRUNCATE TABLE bronze.crm_caf_5_en_cours_depot;
		PRINT '>> Inserting Data Into: bronze.crm_caf_5_en_cours_depot';
		BULK INSERT bronze.crm_caf_5_en_cours_depot
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_Depot\Depot_En_Cours_CAF_5_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-6----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_6_en_cours_depot';
		TRUNCATE TABLE bronze.crm_caf_6_en_cours_depot;
		PRINT '>> Inserting Data Into: bronze.crm_caf_6_en_cours_depot';
		BULK INSERT bronze.crm_caf_6_en_cours_depot
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_Depot\Depot_En_Cours_CAF_6_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		-- Ligne de Fonctionnement----------------------------------------------------------
		-------------------------------------------------------------------------------------
		--- CAF-1----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_1_en_cours_ldf';
		TRUNCATE TABLE bronze.crm_caf_1_en_cours_ldf;
		PRINT '>> Inserting Data Into: bronze.crm_caf_1_en_cours_ldf';
		BULK INSERT bronze.crm_caf_1_en_cours_ldf
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_L\LDF_En_Cours_CAF_1_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-2----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_2_en_cours_ldf';
		TRUNCATE TABLE bronze.crm_caf_2_en_cours_ldf;
		PRINT '>> Inserting Data Into: bronze.crm_caf_2_en_cours_ldf';
		BULK INSERT bronze.crm_caf_2_en_cours_ldf
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_L\LDF_En_Cours_CAF_2_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-3----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_3_en_cours_ldf';
		TRUNCATE TABLE bronze.crm_caf_3_en_cours_ldf;
		PRINT '>> Inserting Data Into: bronze.crm_caf_3_en_cours_ldf';
		BULK INSERT bronze.crm_caf_3_en_cours_ldf
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_L\LDF_En_Cours_CAF_3_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-4----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_4_en_cours_ldf';
		TRUNCATE TABLE bronze.crm_caf_4_en_cours_ldf;
		PRINT '>> Inserting Data Into: bronze.crm_caf_4_en_cours_ldf';
		BULK INSERT bronze.crm_caf_4_en_cours_ldf
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_L\LDF_En_Cours_CAF_4_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-5----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_5_en_cours_ldf';
		TRUNCATE TABLE bronze.crm_caf_5_en_cours_ldf;
		PRINT '>> Inserting Data Into: bronze.crm_caf_5_en_cours_ldf';
		BULK INSERT bronze.crm_caf_5_en_cours_ldf
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_L\LDF_En_Cours_CAF_5_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- CAF-6----------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.crm_caf_6_en_cours_ldf';
		TRUNCATE TABLE bronze.crm_caf_6_en_cours_ldf;
		PRINT '>> Inserting Data Into: bronze.crm_caf_6_en_cours_ldf';
		BULK INSERT bronze.crm_caf_6_en_cours_ldf
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_CRM\2023\Mars\resultat_en_cours_M23_L\LDF_En_Cours_CAF_6_2023_M.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		


		PRINT '------------------------------------------------';
		PRINT 'Loading ERP Tables';
		PRINT '------------------------------------------------';

		-------------------------------------------------------------------------------------
		--- Agences -------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.erp_agence_info';
		TRUNCATE TABLE bronze.erp_agence_info;
		PRINT '>> Inserting Data Into: bronze.erp_agence_info';
		BULK INSERT bronze.erp_agence_info
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_ERP\agences.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		
		-------------------------------------------------------------------------------------
		--- Entreprise ----------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.erp_entrepise_info';
		TRUNCATE TABLE bronze.erp_entreprise_info;
		PRINT '>> Inserting Data Into: bronze.erp_entrepise_info';
		BULK INSERT bronze.erp_entreprise_info
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_ERP\entreprises2.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ';',
			CODEPAGE = '65001',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- Historique Evenements -----------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.erp_historique_evenements';
		TRUNCATE TABLE bronze.erp_historique_evenements;
		PRINT '>> Inserting Data Into: bronze.erp_historique_evenements';
		BULK INSERT bronze.erp_historique_evenements
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_ERP\historique_evenements.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-------------------------------------------------------------------------------------
		--- Famille Crédits d'Investissement Info -------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.erp_produit_cmlt_info';
		TRUNCATE TABLE bronze.erp_produit_cmlt_info;
		PRINT '>> Inserting Data Into: bronze.erp_produit_cmlt_info';
		BULK INSERT bronze.erp_produit_cmlt_info
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_ERP\produits_CMLT.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- Famille Excédents de Trésorerie Info --------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.erp_produit_depot_info';
		TRUNCATE TABLE bronze.erp_produit_depot_info;
		PRINT '>> Inserting Data Into: bronze.erp_produit_depot_info';
		BULK INSERT bronze.erp_produit_depot_info
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_ERP\produits_Depot.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		-------------------------------------------------------------------------------------
		--- Famille Ligne de Fonctionnement Info --------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.erp_produit_ldf_info';
		TRUNCATE TABLE bronze.erp_produit_ldf_info;
		PRINT '>> Inserting Data Into: bronze.erp_produit_ldf_info';
		BULK INSERT bronze.erp_produit_ldf_info
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_ERP\produits_LDF.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
				-------------------------------------------------------------------------------------
		--- Metriques Mensuelles ------------------------------------------------------------
		-------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.erp_metriques';
		TRUNCATE TABLE bronze.erp_metriques;
		PRINT '>> Inserting Data Into: bronze.erp_metriques';
		BULK INSERT bronze.erp_metriques
		FROM 'C:\Users\X 250\Downloads\Stage Bank of Africa\Project Bank of Africa\Data\source_ERP\metriques_mensuelles.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		
		SET @batch_end_time = GETDATE();
		PRINT '=========================================='
		PRINT 'Loading Bronze Layer is Completed';
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

