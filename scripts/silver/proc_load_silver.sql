--------------------------------------------------------------------------------
--------------------------- En Cours CMLT --------------------------------------✅
--------------------------------------------------------------------------------
---- En Cours CMLT CAF 1
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours CMLT CAF 2
--------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------
---- En Cours CMLT CAF 3
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours CMLT CAF 4
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours CMLT CAF 5
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours CMLT CAF 6
--------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------
--------------------------- En Cours Dépot -------------------------------------✅
--------------------------------------------------------------------------------
---- En Cours Dépot CAF 1
--------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------
---- En Cours Dépot CAF 2
--------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------
---- En Cours Dépot CAF 3
--------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------
---- En Cours Dépot CAF 4
--------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------
---- En Cours Dépot CAF 5
--------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------
---- En Cours Dépot CAF 6
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
--------------------------- En Cours Ligne de Fonctionement --------------------✅
--------------------------------------------------------------------------------
---- En Cours Ligne de Fonctionement CAF 1
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours Ligne de Fonctionement CAF 2
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours Ligne de Fonctionement CAF 3
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours Ligne de Fonctionement CAF 4
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours Ligne de Fonctionement CAF 5
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
---- En Cours Ligne de Fonctionement CAF 6
--------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------Agence----------------------------------------------------------------------------✅
------------------------------------------------------------------------------------------------------------------------------------------
WITH donnees_brutes AS (
    SELECT 
        REPLACE(TRIM(id_agence), '"', '') AS id_agence,
        nom_agence,
        CASE
                WHEN UPPER(TRIM(region) ) = 'GRAND SUD' THEN 'Grand Sud'
                WHEN UPPER(TRIM(region) ) = 'CASA SUD' THEN 'Casa Sud'
                WHEN UPPER(TRIM(region) ) = 'CENTRE ATLANTIQUE' THEN 'Centre Atlantique'
                WHEN UPPER(TRIM(region) ) = 'CASA NORD' THEN 'Casa Nord'
                ELSE 'n/a'

        END AS region,
        CASE 
            WHEN TRIM(type_agence)= 'pme' THEN 'PME'
            ELSE 'n/a'
        END AS type_agence,
        CASE 
				WHEN REPLACE(TRIM(ville), '"', '') = 'agadir' THEN 'Agadir'
                WHEN REPLACE(TRIM(ville), '"', '') = 'casablanca' THEN 'Casablanca'
                WHEN REPLACE(TRIM(ville), '"', '') = 'mohammedai' THEN 'Mohammédia'
                WHEN REPLACE(TRIM(ville), '"', '') = 'rabat' THEN 'Rabat'
				ELSE 'n/a'
		END AS ville
    FROM bronze.erp_agence_info
),

etape1_corrections_base AS (
    SELECT 
        id_agence,
        nom_agence,
        region,
        type_agence,
        ville,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(nom_agence, N'Ã ', N'à'), 
                                        N'Ã¨', N'è'),
                                    N'Ã©', N'é'),
                                N'Ã¢', N'â'),
                            N'Ã´', N'ô'),
                        N'Ã«', N'ë'),
                    N'Ã§', N'ç'),
                N'Ã®', N'î'),
            N'Ã¯', N'ï'),
        N'Ã¹', N'ù')
        AS etape1
    FROM donnees_brutes
),

etape2_corrections_avancees AS (
    SELECT 
        id_agence,
        nom_agence,
        region,
        type_agence,
        ville,
        etape1,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(etape1, N'Ãª', N'ê'),
                                        N'Ã¡', N'á'),
                                    N'Ã­', N'í'),
                                N'Ã³', N'ó'),
                            N'Ãº', N'ú'),
                        N'Ã±', N'ñ'),
                    N'Ã¼', N'ü'),
                N'Ã¤', N'ä'),
            N'Ã¶', N'ö'),
        N'Ã¿', N'ÿ')
        AS etape2
    FROM etape1_corrections_base
),

etape3_corrections_majuscules AS (
    SELECT 
        id_agence,
        nom_agence,
        region,
        type_agence,
        ville,
        etape2,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(etape2, N'Ã€', N'À'),
                                        N'Ã‰', N'É'),
                                    N'Ãˆ', N'È'),
                                N'Ã‡', N'Ç'),
                            N'Ã‚', N'Â'),
                        N'ÃŠ', N'Ê'),
                    N'Ã‹', N'Ë'),
                N'ÃŽ', N'Î'),
            N'Ã"', N'Ô'),
        N'Ã™', N'Ù')
        AS etape3
    FROM etape2_corrections_avancees
),

etape4_corrections_speciales AS (
    SELECT 
        id_agence,
        nom_agence,
        region,
        type_agence,
        ville,
        etape3,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(etape3, N'â€œ', N'"'),
                                    N'â€', N'"'),
                                N'â€™', N''''),
                            N'â€"', N'-'),
                        N'â€"', N'-'),
                    N'â€¦', N'…'),
                N'DÔÇÖ', N'D'''),
            N'├é', N'Â'),
        N'ÔÇÖ', N'''')
        AS etape4
    FROM etape3_corrections_majuscules
),

etape5_nettoyage_final AS (
    SELECT 
        id_agence,
        region,
        type_agence,
        ville,
        nom_agence,
        LTRIM(RTRIM(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(etape4, CHAR(13), ''),
                                CHAR(10), ''
                            ),
                            CHAR(9), ' '
                        ),
                        '  ', ' '
                    ),
                    '""', ''
                ),
                '"', ''
            )
        )) AS nom_agence_propre
    FROM etape4_corrections_speciales
)

INSERT INTO silver.erp_agence_info(
    id_agence,
    nom_agence,
    region,
    type_agence,
    ville
)
SELECT 
    id_agence,
    nom_agence_propre AS nom_agence,
    region,
    type_agence,
    ville
FROM etape5_nettoyage_final;
-----------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------- Entreprise -------------------------------------------------------✅
-----------------------------------------------------------------------------------------------------------------------------
-- 1. Correction de la taille de colonne forme_juridique
ALTER TABLE silver.erp_entrepise_info 
ALTER COLUMN forme_juridique VARCHAR(50);
GO

-- 2. Code principal avec toutes les corrections
WITH donnees_brutes AS (
    SELECT 
            TRIM(id_entreprise) AS id_entreprise,
            raison_sociale,
            CASE 
                WHEN UPPER(TRIM(forme_juridique)) = 'EI' THEN 'Entreprise Individuelle'
                WHEN UPPER(TRIM(forme_juridique)) = 'SA' THEN 'Société Anonyme'
                WHEN UPPER(TRIM(forme_juridique)) = 'SAS' THEN 'Société par Actions Simplifiée'
                WHEN UPPER(TRIM(forme_juridique)) = 'SARL' THEN 'Société à Responsabilité Limitée'
                ELSE 'n/a'
            END AS forme_juridique,
            CASE 
			    WHEN UPPER(TRIM(secteur_activite)) = 'AGROALIMENTAIRE' THEN 'Agroalimentaire'
			    WHEN UPPER(TRIM(secteur_activite)) = 'ARTISANAT' THEN 'Artisanat'
			    WHEN UPPER(TRIM(secteur_activite)) = 'AUTRES SERVICES' THEN 'Autres Services'
			    WHEN UPPER(TRIM(secteur_activite)) = 'BTP ET CONSTRUCTION' THEN 'BTP et Construction'
			    WHEN TRIM(secteur_activite) = 'Commerce de dÃ©tail' THEN 'Commerce de Détail'
			    WHEN UPPER(TRIM(secteur_activite)) = 'IMPORT-EXPORT' THEN 'Import Export'
                WHEN UPPER(TRIM(secteur_activite)) = 'INDUSTRIE TEXTILE' THEN 'Industrie Textile'
                WHEN UPPER(TRIM(secteur_activite)) = 'SERVICES AUX ENTREPRISES' THEN 'Services aux Entreprises'
                WHEN UPPER(TRIM(secteur_activite)) = 'TECHNOLOGIES' THEN 'Technologies'
                WHEN UPPER(TRIM(secteur_activite)) = 'TRANSPORT ET LOGISTIQUE' THEN 'Transport et Logistique'
			    ELSE 'n/a'
		    END AS secteur_activite,
            date_creation,
            CASE 
                WHEN LOWER(TRIM(ville)) = 'rabat' THEN 'Rabat'
                WHEN LOWER(TRIM(ville)) = 'casablanca' THEN 'Casablanca'
                WHEN LOWER(TRIM(ville)) = 'agadir' THEN 'Agadir'
                WHEN LOWER(TRIM(ville)) IN ('mohammedia', 'mohammedai') THEN 'Mohammédia'
                ELSE COALESCE(ville, 'n/a')
            END AS ville,
            pays,
            adresse,
            type_client, 
            matricule_fiscale,
            identifiant_commande,
            date_premier_engagement,
            score_risque,  
            CASE 
                WHEN TRIM(note_interne) = 'Excellent' THEN 'Excellent'
                WHEN TRIM(note_interne) = 'Bon' THEN 'Bon'
                WHEN TRIM(note_interne) = 'TrÃ¨s Bon' THEN 'Très Bon'
                WHEN TRIM(note_interne) = 'Faible' THEN 'Faible'
                WHEN TRIM(note_interne) = 'Moyen' THEN 'Moyen'
                ELSE 'n/a'
            END AS note_interne,
            date_mise_a_jour, 
            CASE 
		        WHEN UPPER(TRIM(id_agence)) = 'CAF_1' THEN 'CAF-1'
		        WHEN UPPER(TRIM(id_agence)) = 'CAF_2' THEN 'CAF-2'
		        WHEN UPPER(TRIM(id_agence)) = 'CAF_3' THEN 'CAF-3'
		        WHEN UPPER(TRIM(id_agence)) = 'CAF_4' THEN 'CAF-4'
		        WHEN UPPER(TRIM(id_agence)) = 'CAF_5' THEN 'CAF-5'
		        WHEN UPPER(TRIM(id_agence)) = 'CAF_6' THEN 'CAF-6'
		        ELSE 'n/a'
	        END AS id_agence, 
            statut_client,
            chiffre_affaires_annuel,
            -- Conversions sécurisées pour les colonnes INT/TINYINT/SMALLINT
            CASE 
                WHEN ISNUMERIC(effectif_employes) = 1 THEN CAST(CAST(effectif_employes AS FLOAT) AS INT)
                ELSE NULL 
            END AS effectif_employes,
            niveau_endettement,
            CASE 
                WHEN ISNUMERIC(anciennete_relation_banque) = 1 THEN CAST(CAST(anciennete_relation_banque AS FLOAT) AS TINYINT)
                ELSE NULL 
            END AS anciennete_relation_banque,
            rating_externe, 
            is_cfc, 
            CASE 
                WHEN ISNUMERIC(anciennete_entreprise_mois) = 1 THEN CAST(CAST(anciennete_entreprise_mois AS FLOAT) AS SMALLINT)
                ELSE NULL 
            END AS anciennete_entreprise_mois,
            CASE 
                WHEN ISNUMERIC(anciennete_relation_mois) = 1 THEN CAST(CAST(anciennete_relation_mois AS FLOAT) AS SMALLINT)
                ELSE NULL 
            END AS anciennete_relation_mois,
            CASE 
                WHEN ISNUMERIC(nb_contacts_agence_mois) = 1 THEN CAST(CAST(nb_contacts_agence_mois AS FLOAT) AS TINYINT)
                ELSE NULL 
            END AS nb_contacts_agence_mois,
            is_digital_user,
            digital_usage_pct,
            CASE 
                WHEN ISNUMERIC(nb_connexions_digital_mois) = 1 THEN CAST(CAST(nb_connexions_digital_mois AS FLOAT) AS TINYINT)
                ELSE NULL 
            END AS nb_connexions_digital_mois,
            CASE 
                WHEN ISNUMERIC(nb_transactions_mois) = 1 THEN CAST(CAST(nb_transactions_mois AS FLOAT) AS TINYINT)
                ELSE NULL 
            END AS nb_transactions_mois,
            montant_moyen_transaction, 
            is_seasonal_business,
            coefficient_saisonnalite,
            CASE 
                WHEN ISNUMERIC(mois_pic_activite) = 1 THEN CAST(CAST(mois_pic_activite AS FLOAT) AS TINYINT)
                WHEN mois_pic_activite IS NULL THEN 1
                ELSE 1 
            END AS mois_pic_activite,
            CASE 
                WHEN ISNUMERIC(nb_reclamations_an) = 1 THEN CAST(CAST(nb_reclamations_an AS FLOAT) AS TINYINT)
                ELSE NULL 
            END AS nb_reclamations_an,
            CASE 
                WHEN ISNUMERIC(nb_incidents_paiement) = 1 THEN CAST(CAST(nb_incidents_paiement AS FLOAT) AS TINYINT)
                ELSE NULL 
            END AS nb_incidents_paiement,
            ca_par_employe,
            croissance_ca_annuelle_pct,
            niveau_endettement_declare,
            volatilite_revenus
        FROM bronze.erp_entrepise_info
),

etape1_corrections_base AS (
    SELECT 
        *,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(raison_sociale, N'Ã ', N'à'), 
                                        N'Ã¨', N'è'),
                                    N'Ã©', N'é'),
                                N'Ã¢', N'â'),
                            N'Ã´', N'ô'),
                        N'Ã«', N'ë'),
                    N'Ã§', N'ç'),
                N'Ã®', N'î'),
            N'Ã¯', N'ï'),
        N'Ã¹', N'ù')
        AS etape1
    FROM donnees_brutes
),

etape2_corrections_avancees AS (
    SELECT 
        *,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(etape1, N'Ãª', N'ê'),
                                        N'Ã¡', N'á'),
                                    N'Ã­', N'í'),
                                N'Ã³', N'ó'),
                            N'Ãº', N'ú'),
                        N'Ã±', N'ñ'),
                    N'Ã¼', N'ü'),
                N'Ã¤', N'ä'),
            N'Ã¶', N'ö'),
        N'Ã¿', N'ÿ')
        AS etape2
    FROM etape1_corrections_base
),

etape3_corrections_majuscules AS (
    SELECT 
        *,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(etape2, N'Ã€', N'À'),
                                        N'Ã‰', N'É'),
                                    N'ÃŒ', N'È'),
                                N'Ã‡', N'Ç'),
                            N'Ã‚', N'Â'),
                        N'ÃŠ', N'Ê'),
                    N'Ã‹', N'Ë'),
                N'ÃŽ', N'Î'),
            N'Ã"', N'Ô'),
        N'Ã™', N'Ù')
        AS etape3
    FROM etape2_corrections_avancees
),

etape4_corrections_speciales AS (
    SELECT 
        *,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(etape3, N'â€œ', N'"'),
                        N'â€', N'"'),
                    N'â€™', N''''),
                N'â€"', N'-'),
            N'â€"', N'-'),
        N'â€¦', N'…')
        AS etape4
    FROM etape3_corrections_majuscules
),

etape5_nettoyage_final AS (
    SELECT 
        id_entreprise,
        forme_juridique,
        secteur_activite, 
        date_creation,
        ville,
        pays,
        adresse,
        type_client, 
        matricule_fiscale,
        identifiant_commande,
        date_premier_engagement,
        score_risque, 
        note_interne, 
        date_mise_a_jour, 
        id_agence, 
        statut_client,
        chiffre_affaires_annuel,
        effectif_employes,
        niveau_endettement,
        anciennete_relation_banque,
        rating_externe, 
        is_cfc, 
        anciennete_entreprise_mois,
        anciennete_relation_mois,
        nb_contacts_agence_mois,
        is_digital_user,
        digital_usage_pct,
        nb_connexions_digital_mois,
        nb_transactions_mois,
        montant_moyen_transaction, 
        is_seasonal_business,
        coefficient_saisonnalite,
        mois_pic_activite, 
        nb_reclamations_an,
        nb_incidents_paiement,
        ca_par_employe,
        croissance_ca_annuelle_pct,
        niveau_endettement_declare,
        volatilite_revenus,
        LTRIM(RTRIM(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(etape4, CHAR(13), ''),
                        CHAR(10), ''
                    ),
                    CHAR(9), ' '
                ),
                '  ', ' '
            )
        )) AS raison_sociale_corrigee
    FROM etape4_corrections_speciales
)

INSERT INTO silver.erp_entrepise_info (
    id_entreprise,
    raison_sociale,
    forme_juridique,
    secteur_activite, 
    date_creation,
    ville,
    pays,
    adresse,
    type_client, 
    matricule_fiscale,
    identifiant_commande,
    date_premier_engagement,
    score_risque, 
    note_interne, 
    date_mise_a_jour, 
    id_agence, 
    statut_client,
    chiffre_affaires_annuel,
    effectif_employes,
    niveau_endettement,
    anciennete_relation_banque,
    rating_externe, 
    is_cfc, 
    anciennete_entreprise_mois,
    anciennete_relation_mois,
    nb_contacts_agence_mois,
    is_digital_user,
    digital_usage_pct,
    nb_connexions_digital_mois,
    nb_transactions_mois,
    montant_moyen_transaction, 
    is_seasonal_business,
    coefficient_saisonnalite,
    mois_pic_activite, 
    nb_reclamations_an,
    nb_incidents_paiement,
    ca_par_employe,
    croissance_ca_annuelle_pct,
    niveau_endettement_declare,
    volatilite_revenus
)

SELECT 
    id_entreprise,
    raison_sociale_corrigee AS raison_sociale,
    forme_juridique,
    secteur_activite, 
    date_creation,
    ville,
    pays,
    adresse,
    type_client, 
    matricule_fiscale,
    identifiant_commande,
    date_premier_engagement,
    score_risque, 
    note_interne, 
    date_mise_a_jour, 
    id_agence, 
    statut_client,
    chiffre_affaires_annuel,
    effectif_employes,
    niveau_endettement,
    anciennete_relation_banque,
    rating_externe, 
    is_cfc, 
    anciennete_entreprise_mois,
    anciennete_relation_mois,
    nb_contacts_agence_mois,
    is_digital_user,
    digital_usage_pct,
    nb_connexions_digital_mois,
    nb_transactions_mois,
    montant_moyen_transaction, 
    is_seasonal_business,
    coefficient_saisonnalite,
    mois_pic_activite, 
    nb_reclamations_an,
    nb_incidents_paiement,
    ca_par_employe,
    croissance_ca_annuelle_pct,
    niveau_endettement_declare,
    volatilite_revenus
FROM etape5_nettoyage_final;

