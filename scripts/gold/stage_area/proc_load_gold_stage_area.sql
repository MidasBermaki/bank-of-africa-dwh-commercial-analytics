CREATE OR ALTER PROCEDURE gold.load_en_cours_tables_stage_area AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 
    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '================================================';
        PRINT 'Loading Gold Layer';
        PRINT '================================================';
		------------------------------------------------------------------------
		-------------- Crédit Investisement ------------------------------------
		------------------------------------------------------------------------
        SET @start_time = GETDATE();
		PRINT '>> Truncating Table: gold.en_cours_crédit_investisement_stage_area';
		TRUNCATE TABLE gold.en_cours_crédit_investisement_stage_area;
		PRINT '>> Inserting Data Into: gold.en_cours_crédit_investisement_stage_area';
		INSERT INTO gold.en_cours_crédit_investisement_stage_area(
			id_en_cours,
			solde,
			id_entreprise,
			raison_sociale,
			secteur_activite,
			id_produit,
			nom_produit,
			sous_famille,
			nom_agence,
			region,
			ville,
			date_premier_engagement,
			score_risque,
			chiffre_affaires_annuel,
			is_cfc,
			periode,
			date_saisie,
			devise         
		)
		select 
				e.id_en_cours, 
				e.solde,   
				e.id_entreprise, 
				en.raison_sociale, 
				en.secteur_activite,
				e.id_produit,  
				c.nom_cmlt, 
				c.sous_famille, 
				a.nom_agence,
				a.region, 
				a.ville,
				en.date_premier_engagement,
				en.score_risque, 
				en.chiffre_affaires_annuel,
				en.is_cfc,
				e.periode,
				e.date_saisie,
				e.devise 
				from silver.crm_en_cours_cmlt_fusion e
				left join silver.erp_produit_cmlt_info c
					on e.id_produit=c.id_cmlt
				left join silver.erp_agence_info a 
					on e.id_agence= a.id_agence
				left join silver.erp_entrepise_info en
					on en.id_entreprise=e.id_entreprise
				SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
		--------------------------------------------------------------------------------
		--------------------Excédents Trésorerie ---------------------------------------
		--------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: gold.en_cours_excédents_trésorerie_stage_area';
		TRUNCATE TABLE gold.en_cours_excédents_trésorerie_stage_area;
		PRINT '>> Inserting Data Into: gold.en_cours_excédents_trésorerie_stage_area';
		INSERT INTO gold.en_cours_excédents_trésorerie_stage_area (
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
			devise         
		)
		select 
			e.id_en_cours,
			e.solde,
			e.id_entreprise,
			en.raison_sociale,
			en.secteur_activite,
			e.id_produit,
			d.produit,
			d.sous_famille,
			a.nom_agence, 
			a.region,     
			a.ville, 
			en.date_premier_engagement, 
			en.score_risque, 
			en.chiffre_affaires_annuel, 
			en.is_cfc,
			e.periode,
			e.date_saisie_from_source, 
			e.devise 
			from silver.crm_en_cours_depot_fusion e
			left join silver.erp_produit_depot_info d
				on e.id_produit=d.id_depot
			left join silver.erp_agence_info a 
				on e.id_agence= a.id_agence
			left join silver.erp_entrepise_info en
				on en.id_entreprise=e.id_entreprise
				SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
		------------------------------------------------------------------------------------------------------
		--------------lignes Fonctionnement-------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: gold.en_cours_lignes_fonctionnement_stage_area';
		TRUNCATE TABLE gold.en_cours_lignes_fonctionnement_stage_area;
		PRINT '>> Inserting Data Into: gold.en_cours_lignes_fonctionnement_stage_area';
		INSERT INTO gold.en_cours_lignes_fonctionnement_stage_area(
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
			devise         
		)
		select 
				e.id_en_cours,
				e.solde,
				e.id_entreprise,
				en.raison_sociale,
				en.secteur_activite,
				e.id_produit,
				d.nom_ldf,
				d.sous_famille,
				a.nom_agence, 
				a.region,     
				a.ville, 
				en.date_premier_engagement, 
				en.score_risque, 
				en.chiffre_affaires_annuel, 
				en.is_cfc,
				e.periode,
				e.date_saisie,
				e.devise 
				from silver.crm_en_cours_ldf_fusion e
				left join silver.erp_produit_ldf_info d
					on e.id_produit=d.id_ldf
				left join silver.erp_agence_info a 
					on e.id_agence= a.id_agence
				left join silver.erp_entrepise_info en
					on en.id_entreprise=e.id_entreprise
				SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------';
		---------------------------------------------------------------------------------------------------------------------
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
