-------------------------------- 2023-Mars--------------------------------------------------
CREATE OR ALTER PROCEDURE silver.fusion_silver_2023_mars AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 

	 DECLARE @periode NVARCHAR(20) = '2023-Mars';

    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '================================================';
        PRINT 'Silver Fusion Layer';
        PRINT '================================================';
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_en_cours_cmlt_fusion';
		TRUNCATE TABLE silver.crm_en_cours_cmlt_fusion;
		PRINT '>> Inserting Data Into: silver.crm_en_cours_cmlt_fusion';
		INSERT INTO silver.crm_en_cours_cmlt_fusion
		(
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
		taux_credit,
		periode
		)
		SELECT id_en_cours,
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
		taux_credit,
		@periode
		FROM silver.crm_caf_1_en_cours_cmlt
		UNION ALL
		SELECT id_en_cours,
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
		taux_credit,
		@periode
		FROM silver.crm_caf_2_en_cours_cmlt
		UNION ALL
		SELECT id_en_cours,
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
		taux_credit,
		@periode
		FROM silver.crm_caf_3_en_cours_cmlt
		UNION ALL
		SELECT id_en_cours,
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
		taux_credit,
		@periode
		FROM silver.crm_caf_4_en_cours_cmlt
		UNION ALL
		SELECT id_en_cours,
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
		taux_credit,
		@periode
		FROM silver.crm_caf_5_en_cours_cmlt
		UNION ALL
		SELECT id_en_cours,
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
		taux_credit,
		@periode
		FROM silver.crm_caf_6_en_cours_cmlt;
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';

		---------------------------------------------------------------------------------

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_en_cours_depot_fusion';
		TRUNCATE TABLE silver.crm_en_cours_depot_fusion;
		PRINT '>> Inserting Data Into: silver.crm_en_cours_depot_fusion';
		INSERT INTO silver.crm_en_cours_depot_fusion
		(
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie_from_source,
		statut,
		solde,
		taux_remuneration,
		periode
		)
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		solde,
		taux_remuneration,
		@periode
		FROM silver.crm_caf_1_en_cours_depot
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		solde,
		taux_remuneration,
		@periode
		FROM silver.crm_caf_2_en_cours_depot
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		solde,
		taux_remuneration,
		@periode
		FROM silver.crm_caf_3_en_cours_depot
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		solde,
		taux_remuneration,
		@periode
		FROM silver.crm_caf_4_en_cours_depot
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		solde,
		taux_remuneration,
		@periode
		FROM silver.crm_caf_5_en_cours_depot
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		solde,
		taux_remuneration,
		@periode
		FROM silver.crm_caf_6_en_cours_depot

		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
		
		------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: silver.crm_en_cours_ldf_fusion';
		TRUNCATE TABLE silver.crm_en_cours_ldf_fusion;
		PRINT '>> Inserting Data Into: silver.crm_en_cours_ldf_fusion';
		INSERT INTO silver.crm_en_cours_ldf_fusion(
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		montant_autorise,
		solde,
		taux_interet,
		periode
		)
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		montant_autorise,
		solde,
		taux_interet,
		@periode
		FROM silver.crm_caf_1_en_cours_ldf
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		montant_autorise,
		solde,
		taux_interet,
		@periode
		FROM silver.crm_caf_2_en_cours_ldf
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		montant_autorise,
		solde,
		taux_interet,
		@periode
		FROM silver.crm_caf_3_en_cours_ldf
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		montant_autorise,
		solde,
		taux_interet,
		@periode
		FROM silver.crm_caf_4_en_cours_ldf
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		montant_autorise,
		solde,
		taux_interet,
		@periode
		FROM silver.crm_caf_5_en_cours_ldf
		UNION ALL
		SELECT 
		id_en_cours,
		id_agence,
		id_entreprise,
		id_produit,
		devise,
		source_donnee,
		date_saisie,
		statut,
		montant_autorise,
		solde,
		taux_interet,
		@periode
		FROM silver.crm_caf_6_en_cours_ldf
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
    SET @batch_end_time = GETDATE();
	PRINT '=========================================='
	PRINT 'Fusion Silver Layer is Completed';
    PRINT '   - Total Load Duration: ' + CAST(DATEDIFF(SECOND, @batch_start_time, @batch_end_time) AS NVARCHAR) + ' seconds';
	PRINT '=========================================='
	
	END TRY
	BEGIN CATCH
		PRINT '=========================================='
		PRINT 'ERROR OCCURED DURING Fusion En Cours Tables'
		PRINT 'Error Message' + ERROR_MESSAGE();
		PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '=========================================='
	END CATCH
END
