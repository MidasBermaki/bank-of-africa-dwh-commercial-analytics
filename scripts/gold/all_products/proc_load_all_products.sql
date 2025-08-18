CREATE OR ALTER PROCEDURE gold.load_all_products AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 
    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '================================================';
        PRINT 'Loading all products Table ';
        PRINT '================================================';

        SET @start_time = GETDATE();
		PRINT '>> Truncating Table: gold.en_cours_all_products';
		TRUNCATE TABLE gold.en_cours_all_products;
		PRINT '>> Inserting Data Into: gold.en_cours_all_products';
		INSERT INTO gold.en_cours_all_products(
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
				from(
					select * from gold.en_cours_crédit_investisement_finale
					union all 
					select * from gold.en_cours_excédents_trésorerie_finale
					union all 
					select * from gold.en_cours_lignes_fonctionnement_finale) as t;
				SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';

		
		SET @batch_end_time = GETDATE();
		PRINT '=========================================='
		PRINT 'Loading Gold Layer is Completed';
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
