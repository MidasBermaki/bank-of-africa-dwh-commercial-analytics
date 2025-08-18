CREATE OR ALTER PROCEDURE gold.load_historique_2023_mars AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 
    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '================================================';
        PRINT 'Loading Historique_Mars_2023 ';
        PRINT '================================================';

        SET @start_time = GETDATE();
		PRINT '>> Inserting Data Into: gold.historique_2023_mars';
		INSERT INTO gold.historique_2023_mars(
			id_en_cours                ,
			solde                      ,
			id_entreprise               ,
			raison_sociale              ,
			secteur_activite            ,
			id_produit                  ,
			nom_produit                 ,
			sous_famille                ,
			nom_agence,
			region                      ,
			ville                       ,
			date_premier_engagement,
			score_risque                ,
			chiffre_affaires_annuel     ,
			is_cfc                     ,
			periode                     ,
			date_saisie,
			devise         )
		select 
				id_en_cours, --✅
				solde,   --✅
				id_entreprise, --✅
				raison_sociale, --✅
				secteur_activite, --✅
				id_produit,  --✅
				nom_produit,  --✅
				sous_famille, --✅
				nom_agence,  --✅
				region,     --✅
				ville,      --✅
				date_premier_engagement, --✅
				score_risque, --✅
				chiffre_affaires_annuel, --✅
				is_cfc, --✅
				periode,     --✅
				date_saisie, --✅
				devise  --✅
				from gold.en_cours_all_products;
				SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';

		
		SET @batch_end_time = GETDATE();
		PRINT '=========================================='
		PRINT 'Loading Historique Mars-2023';
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
