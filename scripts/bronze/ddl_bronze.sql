/*
===================================================================================================================
DDL Script ( Data Definition Language script) : Création des tables du schéma Bronze
===================================================================================================================
Objectif du script :
    Ce script crée les tables dans le schéma 'bronze', en supprimant les tables 
    existantes si elles sont déjà présentes.
    Exécutez ce script pour redéfinir la structure DDL des tables du schéma 'bronze'.
===================================================================================================================
*/
-------------------------------------------------------------------------------------------------------------------
----- Création des tables EnCours Produit Type: Excédents de Trésorerie (Dépôt), selon les agences (Source CRM)
-------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('bronze.crm_caf_1_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_1_en_cours_depot;
GO
CREATE TABLE bronze.crm_caf_1_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnée       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4)
);
GO
IF OBJECT_ID('bronze.crm_caf_2_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_2_en_cours_depot;
GO
CREATE TABLE bronze.crm_caf_2_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4)
);
GO
IF OBJECT_ID('bronze.crm_caf_3_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_3_en_cours_depot;
GO
CREATE TABLE bronze.crm_caf_3_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4)
);
GO
IF OBJECT_ID('bronze.crm_caf_4_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_4_en_cours_depot;
GO
CREATE TABLE bronze.crm_caf_4_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4)
);
GO
IF OBJECT_ID('bronze.crm_caf_5_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_5_en_cours_depot;
GO
CREATE TABLE bronze.crm_caf_5_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4)
);
GO
IF OBJECT_ID('bronze.crm_caf_6_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_6_en_cours_depot;
GO
CREATE TABLE bronze.crm_caf_6_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4)
);
GO

-------------------------------------------------------------------------------------------------------------------
----- Création des tables EnCours Produit Type: Crédits d’Investissement, selon les agences (Source CRM)
-------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('bronze.crm_caf_1_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_1_en_cours_cmlt;
GO
CREATE TABLE bronze.crm_caf_1_en_cours_cmlt (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    montant_autorise    BIGINT,
    déblockage          BIGINT,
    amortisement        BIGINT,
    solde               BIGINT,
    taux_credit         DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_2_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_2_en_cours_cmlt;
GO
CREATE TABLE bronze.crm_caf_2_en_cours_cmlt (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    montant_autorise    BIGINT,
    déblockage          BIGINT,
    amortisement        BIGINT,
    solde               BIGINT,
    taux_credit         DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_3_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_3_en_cours_cmlt;
GO
CREATE TABLE bronze.crm_caf_3_en_cours_cmlt (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    montant_autorise    BIGINT,
    déblockage          BIGINT,
    amortisement        BIGINT,
    solde               BIGINT,
    taux_credit         DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_4_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_4_en_cours_cmlt;
GO
CREATE TABLE bronze.crm_caf_4_en_cours_cmlt (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    montant_autorise    BIGINT,
    déblockage          BIGINT,
    amortisement        BIGINT,
    solde               BIGINT,
    taux_credit         DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_5_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_5_en_cours_cmlt;
GO
CREATE TABLE bronze.crm_caf_5_en_cours_cmlt (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    montant_autorise    BIGINT,
    déblockage          BIGINT,
    amortisement        BIGINT,
    solde               BIGINT,
    taux_credit         DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_6_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_6_en_cours_cmlt;
GO
CREATE TABLE bronze.crm_caf_6_en_cours_cmlt (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    montant_autorise    BIGINT,
    déblockage          BIGINT,
    amortisement        BIGINT,
    solde               BIGINT,
    taux_credit         DECIMAL(10,4)
);
GO

-------------------------------------------------------------------------------------------------------------------
----- Création des tables EnCours Produit Type: Ligne de Fonctionnement, selon les agences (Source CRM)
-------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('bronze.crm_caf_1_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_1_en_cours_ldf;
GO
CREATE TABLE bronze.crm_caf_1_en_cours_ldf (
    id_en_cours       NVARCHAR(20),
    id_agence         NVARCHAR(20),
    id_entreprise     NVARCHAR(50),
    id_produit        NVARCHAR(20),
    devise            NVARCHAR(10),
    source_donnee     NVARCHAR(20),
    date_saisie       DATE,
    statut            NVARCHAR(20),
    montant_autorise  BIGINT,
    solde             BIGINT,
    taux_interet      DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_2_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_2_en_cours_ldf;
GO
CREATE TABLE bronze.crm_caf_2_en_cours_ldf (
    id_en_cours       NVARCHAR(20),
    id_agence         NVARCHAR(20),
    id_entreprise     NVARCHAR(50),
    id_produit        NVARCHAR(20),
    devise            NVARCHAR(10),
    source_donnee     NVARCHAR(20),
    date_saisie       DATE,
    statut            NVARCHAR(20),
    montant_autorise  BIGINT,
    solde             BIGINT,
    taux_interet      DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_3_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_3_en_cours_ldf;
GO
CREATE TABLE bronze.crm_caf_3_en_cours_ldf (
    id_en_cours       NVARCHAR(20),
    id_agence         NVARCHAR(20),
    id_entreprise     NVARCHAR(50),
    id_produit        NVARCHAR(20),
    devise            NVARCHAR(10),
    source_donnee     NVARCHAR(20),
    date_saisie       DATE,
    statut            NVARCHAR(20),
    montant_autorise  BIGINT,
    solde             BIGINT,
    taux_interet      DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_4_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_4_en_cours_ldf;
GO
CREATE TABLE bronze.crm_caf_4_en_cours_ldf (
    id_en_cours       NVARCHAR(20),
    id_agence         NVARCHAR(20),
    id_entreprise     NVARCHAR(50),
    id_produit        NVARCHAR(20),
    devise            NVARCHAR(10),
    source_donnee     NVARCHAR(20),
    date_saisie       DATE,
    statut            NVARCHAR(20),
    montant_autorise  BIGINT,
    solde             BIGINT,
    taux_interet      DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_5_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_5_en_cours_ldf;
GO
CREATE TABLE bronze.crm_caf_5_en_cours_ldf (
    id_en_cours       NVARCHAR(20),
    id_agence         NVARCHAR(20),
    id_entreprise     NVARCHAR(50),
    id_produit        NVARCHAR(20),
    devise            NVARCHAR(10),
    source_donnee     NVARCHAR(20),
    date_saisie       DATE,
    statut            NVARCHAR(20),
    montant_autorise  BIGINT,
    solde             BIGINT,
    taux_interet      DECIMAL(10,4)
);
GO

IF OBJECT_ID('bronze.crm_caf_6_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE bronze.crm_caf_6_en_cours_ldf;
GO
CREATE TABLE bronze.crm_caf_6_en_cours_ldf (
    id_en_cours       NVARCHAR(20),
    id_agence         NVARCHAR(20),
    id_entreprise     NVARCHAR(50),
    id_produit        NVARCHAR(20),
    devise            NVARCHAR(10),
    source_donnee     NVARCHAR(20),
    date_saisie       DATE,
    statut            NVARCHAR(20),
    montant_autorise  BIGINT,
    solde             BIGINT,
    taux_interet      DECIMAL(10,4)
);
GO

--------------------------------------------------------------------------------------------------------------------------
----- Création des Tables des Jointures Entreprise
----- infos des produis Ligne de Fonctionnement, Crédits d’Investissement, Excédents de Trésorerie....  (Source ERP)
--------------------------------------------------------------------------------------------------------------------------
------- Entreprise Info
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('bronze.erp_entrepise_info', 'U') IS NOT NULL
    DROP TABLE bronze.erp_entrepise_info;
GO

CREATE TABLE bronze.erp_entrepise_info (
    id_entreprise                   NVARCHAR(30),
    raison_sociale                  NVARCHAR(100),
    forme_juridique                 NVARCHAR(50),
    secteur_activite                NVARCHAR(100),
    date_creation                   DATE,
    ville                           NVARCHAR(50),
    pays                            NVARCHAR(50),
    adresse                         NVARCHAR(150),
    type_client                     NVARCHAR(20),
    matricule_fiscale               NVARCHAR(30),
    identifiant_commande            NVARCHAR(30),
    date_premier_engagement         DATE,
    score_risque                    DECIMAL(4,1),
    note_interne                    NVARCHAR(20),
    date_mise_a_jour                DATE,
    id_agence                       NVARCHAR(20),
    statut_client                   NVARCHAR(20),
    chiffre_affaires_annuel         BIGINT,
    effectif_employes               INT,
    niveau_endettement              DECIMAL(5,2),
    anciennete_relation_banque      INT,
    rating_externe                  NVARCHAR(5),
    is_cfc                          BIT,
    anciennete_entreprise_mois      INT,
    anciennete_relation_mois        INT,
    nb_contacts_agence_mois         INT,
    is_digital_user                 BIT,
    digital_usage_pct               DECIMAL(5,2),
    nb_connexions_digital_mois      INT,
    nb_transactions_mois            INT,
    montant_moyen_transaction       FLOAT,
    is_seasonal_business            BIT,
    coefficient_saisonnalite        DECIMAL(5,2),
    mois_pic_activite               NVARCHAR(20),
    nb_reclamations_an              INT,
    nb_incidents_paiement           INT,
    ca_par_employe                  FLOAT,
    croissance_ca_annuelle_pct      DECIMAL(6,2),
    niveau_endettement_declare      DECIMAL(6,3),
    volatilite_revenus              DECIMAL(6,3),
    derniere_transaction            DATE,
    nb_produits_actifs              INT,
    revenus_generes_banque          BIGINT
);
GO

--------------------------------------------------------------------------------------------------------------------------
----------Agence Info
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('bronze.erp_agence_info', 'U') IS NOT NULL
    DROP TABLE bronze.erp_agence_info;
GO

CREATE TABLE bronze.erp_agence_info (
    id_agence    NVARCHAR(20),
    nom_agence      NVARCHAR(100),
    region       NVARCHAR(50),
    type_agence  NVARCHAR(20),
    ville        NVARCHAR(50)
);
GO
--------------------------------------------------------------------------------------------------------------------------
------- Excédents de Trésorerie Famille Infos  
--------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('bronze.erp_produit_depot_info', 'U') IS NOT NULL
    DROP TABLE bronze.erp_produit_depot_info;
GO

CREATE TABLE bronze.erp_produit_depot_info (
    id_depot                NVARCHAR(20),
    sous_famille            NVARCHAR(100),
    produit                 NVARCHAR(100),
    _description            NVARCHAR(500),
    mode_versement_interet  NVARCHAR(100),
    unite_monetaire         NVARCHAR(10),
    duree_blocage_min       NVARCHAR(50),
    duree_blocage_max       NVARCHAR(50),
    taux_interet            DECIMAL(5,4)
);
GO
--------------------------------------------------------------------------------------------------------------------------
------- Crédits d’Investissement Famille Info
--------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('bronze.erp_produit_cmlt_info', 'U') IS NOT NULL
    DROP TABLE bronze.erp_produit_cmlt_info;
GO

CREATE TABLE bronze.erp_produit_cmlt_info (
    id_cmlt                         NVARCHAR(20),
    nom_cmlt                        NVARCHAR(100),
    sous_famille                    NVARCHAR(100),
    _description                    NVARCHAR(1000),
    unite_monetaire                 NVARCHAR(10),
    quotite_financement             NVARCHAR(20),
    secteur_investissement          NVARCHAR(100),
    periode_remboursement_max_mois  INT,
    categorie_entreprise            NVARCHAR(100)
);
GO
--------------------------------------------------------------------------------------------------------------------------
------- Ligne de Fonctionnement Famille Info 
--------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('bronze.erp_produit_ldf_info', 'U') IS NOT NULL
    DROP TABLE bronze.erp_produit_ldf_info;
GO
CREATE TABLE bronze.erp_produit_ldf_info (
    id_ldf           NVARCHAR(20),
    nom_ldf          NVARCHAR(100),
    sous_famille     NVARCHAR(100),
    unite_monetaire  NVARCHAR(10),
    _type             NVARCHAR(100),
    duree            NVARCHAR(50)
);
GO

--------------------------------------------------------------------------------------------------------------------------
------- Historique Evenement Infos
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('bronze.erp_historique_evenements', 'U') IS NOT NULL
    DROP TABLE bronze.erp_historique_evenements;
GO

CREATE TABLE bronze.erp_historique_evenements (
    id_evenement     NVARCHAR(50),
    id_entreprise    NVARCHAR(30),
    type_evenement   NVARCHAR(50),
    date_evenement   DATE,
    impact_score     DECIMAL(4,2),
    _description      NVARCHAR(200),
    statut           NVARCHAR(20)
);
GO

--------------------------------------------------------------------------------------------------------------------------
------- Metriques_Mensuelles Info
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('bronze.erp_metriques', 'U') IS NOT NULL
    DROP TABLE bronze.erp_metriques;
GO

CREATE TABLE bronze.erp_metriques (
    id_metrique             NVARCHAR(50),
    id_entreprise           NVARCHAR(30),
    annee_mois              CHAR(7),           
    solde_moyen_depot       FLOAT,
    utilisation_credit_pct  DECIMAL(5,2),
    nb_operations           INT,
    nb_contacts_agence      INT,
    nb_connexions_digital   INT,
    satisfaction_score      DECIMAL(3,1),
    retard_paiement         BIT,
    nouveau_produit         BIT,
    reclamation             BIT
);
GO
