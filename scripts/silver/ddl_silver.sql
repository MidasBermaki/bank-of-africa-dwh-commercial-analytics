/*
===================================================================================================================
DDL Script ( Data Definition Language script) : Création des tables du schéma Bronze
===================================================================================================================
Objectif du script :
    Ce script crée les tables dans le schéma 'bronze', en supprimant les tables 
    existantes si elles sont déja présentes.
    Exécutez ce script pour redéfinir la structure DDL des tables du schéma 'bronze'.
===================================================================================================================
===================================================================================================================
DDL Script (Data Definition Language script): Creation of the Bronze Schema Tables
===================================================================================================================
Script Objective:
    This script creates the tables in the 'bronze' schema, dropping the existing tables
    if they are already present.
    Run this script to redefine the DDL structure of the tables in the 'bronze' schema.
===================================================================================================================
*/

-------------------------------------------------------------------------------------------------------------------
----- Création des tables EnCours Produit Type: Excédents de Trésorerie (Dépot), selon les agences (Source CRM)
-------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('silver.crm_caf_1_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_1_en_cours_depot;
GO
CREATE TABLE silver.crm_caf_1_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
IF OBJECT_ID('silver.crm_caf_2_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_2_en_cours_depot;
GO
CREATE TABLE silver.crm_caf_2_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
IF OBJECT_ID('silver.crm_caf_3_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_3_en_cours_depot;
GO
CREATE TABLE silver.crm_caf_3_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
IF OBJECT_ID('silver.crm_caf_4_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_4_en_cours_depot;
GO
CREATE TABLE silver.crm_caf_4_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
IF OBJECT_ID('silver.crm_caf_5_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_5_en_cours_depot;
GO
CREATE TABLE silver.crm_caf_5_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
IF OBJECT_ID('silver.crm_caf_6_en_cours_depot', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_6_en_cours_depot;
GO
CREATE TABLE silver.crm_caf_6_en_cours_depot (
    id_en_cours         NVARCHAR(20),
    id_agence           NVARCHAR(20),
    id_entreprise       NVARCHAR(50),
    id_produit          NVARCHAR(20),
    devise              NVARCHAR(10),
    source_donnee       NVARCHAR(20),
    date_saisie         DATE,
    statut              NVARCHAR(20),
    solde               BIGINT,
    taux_remuneration   DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

-------------------------------------------------------------------------------------------------------------------
----- Création des tables EnCours Produit Type: Crédits d'Investissement, selon les agences (Source CRM)
-------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('silver.crm_caf_1_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_1_en_cours_cmlt;
GO
CREATE TABLE silver.crm_caf_1_en_cours_cmlt (
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
    taux_credit         DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_2_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_2_en_cours_cmlt;
GO
CREATE TABLE silver.crm_caf_2_en_cours_cmlt (
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
    taux_credit         DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_3_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_3_en_cours_cmlt;
GO
CREATE TABLE silver.crm_caf_3_en_cours_cmlt (
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
    taux_credit         DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_4_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_4_en_cours_cmlt;
GO
CREATE TABLE silver.crm_caf_4_en_cours_cmlt (
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
    taux_credit         DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_5_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_5_en_cours_cmlt;
GO
CREATE TABLE silver.crm_caf_5_en_cours_cmlt (
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
    taux_credit         DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_6_en_cours_cmlt', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_6_en_cours_cmlt;
GO
CREATE TABLE silver.crm_caf_6_en_cours_cmlt (
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
    taux_credit         DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

-------------------------------------------------------------------------------------------------------------------
----- Création des tables EnCours Produit Type: Ligne de Fonctionnement, selon les agences (Source CRM)
-------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('silver.crm_caf_1_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_1_en_cours_ldf;
GO
CREATE TABLE silver.crm_caf_1_en_cours_ldf (
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
    taux_interet      DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_2_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_2_en_cours_ldf;
GO
CREATE TABLE silver.crm_caf_2_en_cours_ldf (
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
    taux_interet      DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_3_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_3_en_cours_ldf;
GO
CREATE TABLE silver.crm_caf_3_en_cours_ldf (
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
    taux_interet      DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_4_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_4_en_cours_ldf;
GO
CREATE TABLE silver.crm_caf_4_en_cours_ldf (
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
    taux_interet      DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_5_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_5_en_cours_ldf;
GO
CREATE TABLE silver.crm_caf_5_en_cours_ldf (
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
    taux_interet      DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID('silver.crm_caf_6_en_cours_ldf', 'U') IS NOT NULL
    DROP TABLE silver.crm_caf_6_en_cours_ldf;
GO
CREATE TABLE silver.crm_caf_6_en_cours_ldf (
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
    taux_interet      DECIMAL(10,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--------------------------------------------------------------------------------------------------------------------------
----- Création des Tables des Jointures Entreprise
----- infos des produis Ligne de Fonctionnement, Crédits d'Investissement, Excédents de Trésorerie....  (Source ERP)
--------------------------------------------------------------------------------------------------------------------------
------- Entreprise Info
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('silver.erp_entrepise_info', 'U') IS NOT NULL
    DROP TABLE silver.erp_entrepise_info;
GO

CREATE TABLE silver.erp_entrepise_info (
    id_entreprise                   VARCHAR(50) NOT NULL, --✅          -- Identifiant unique (ex: CAF_1_ENT0000)
    raison_sociale                  NVARCHAR(255),        --✅                  -- Nom de l'entreprise
    forme_juridique                 VARCHAR(50),          --✅               -- SARL, SA, SAS, EI
    secteur_activite                NVARCHAR(100),        --✅             -- Secteur d'activité
    date_creation                   DATE,                 --✅           -- Date de création (converti depuis dd/mm/yyyy)
    ville                           NVARCHAR(100),        --✅           -- Ville
    pays                            NVARCHAR(100),        --✅         -- Pays
    adresse                         NVARCHAR(500),        --✅          -- Adresse complète
    type_client                     VARCHAR(20),          --✅          -- Type de client (ex: PME)
    matricule_fiscale               VARCHAR(20),          --✅          -- Numéro matricule fiscal
    identifiant_commande            VARCHAR(20),          --✅          -- Identifiant commande (ex: CMD173585)
    date_premier_engagement         DATE,                 --✅          -- Date premier engagement
    score_risque                    DECIMAL(3,1),         --✅          -- Score risque (ex: 5.0, 4.1)
    note_interne                    NVARCHAR(50),         --✅          -- Note interne (Excellent, Très Bon, Bon, etc.)
    date_mise_a_jour                DATE,                 --✅          -- Date de mise à jour
    id_agence                       VARCHAR(20),          --✅          -- Identifiant agence (ex: CAF_1)
    statut_client                   VARCHAR(20),          --✅          -- Statut client (Actif, Prospect)
    chiffre_affaires_annuel         DECIMAL(15,2),        --✅          -- Chiffre d'affaires annuel
    effectif_employes               INT,                            -- Nombre d'employés
    niveau_endettement              DECIMAL(5,2),                   -- Niveau d'endettement (0.63, 0.4, etc.)
    anciennete_relation_banque      INT,                        -- Ancienneté relation banque (années)
    rating_externe                  VARCHAR(5),                     -- Rating externe (B, B+, A, C, C+)
    is_cfc                          BIT,                            -- Booléen CFC (True/False -> 1/0)
    anciennete_entreprise_mois      INT,                       -- Ancienneté entreprise en mois
    anciennete_relation_mois        INT,                       -- Ancienneté relation en mois
    nb_contacts_agence_mois         INT,                        -- Nombre de contacts par mois
    is_digital_user                 BIT,                            -- Utilisateur digital (True/False -> 1/0)
    digital_usage_pct               DECIMAL(5,1),                   -- Pourcentage d'usage digital
    nb_connexions_digital_mois      INT,                        -- Nombre de connexions digitales/mois
    nb_transactions_mois            INT,                        -- Nombre de transactions/mois
    montant_moyen_transaction       DECIMAL(12,2),                  -- Montant moyen par transaction
    is_seasonal_business            BIT,                            -- Activité saisonnière (True/False -> 1/0)
    coefficient_saisonnalite        DECIMAL(5,2),                   -- Coefficient de saisonnalité
    mois_pic_activite               INT,                        -- Mois de pic d'activité (1-12)
    nb_reclamations_an              INT,                        -- Nombre de réclamations par an
    nb_incidents_paiement           INT,                        -- Nombre d'incidents de paiement
    ca_par_employe                  DECIMAL(12,2),                  -- CA par employé
    croissance_ca_annuelle_pct      DECIMAL(6,2),                   -- Croissance CA annuelle en %
    niveau_endettement_declare      DECIMAL(6,3),                   -- Niveau d'endettement déclaré
    volatilite_revenus              DECIMAL(5,3), 
    dwh_create_date             DATETIME2 DEFAULT GETDATE()
);
GO
--------------------------------------------------------------------------------------------------------------------------
----------Agence Info
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('silver.erp_agence_info', 'U') IS NOT NULL
    DROP TABLE silver.erp_agence_info;
GO

CREATE TABLE silver.erp_agence_info (
    id_agence    NVARCHAR(20),
    nom_agence      NVARCHAR(100),
    region       NVARCHAR(50),
    type_agence  NVARCHAR(20),
    ville        NVARCHAR(50),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
--------------------------------------------------------------------------------------------------------------------------
------- Excédents de Trésorerie Famille Infos  
--------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('silver.erp_produit_depot_info', 'U') IS NOT NULL
    DROP TABLE silver.erp_produit_depot_info;
GO

CREATE TABLE silver.erp_produit_depot_info (
    id_depot                NVARCHAR(20),
    sous_famille            NVARCHAR(100),
    produit                 NVARCHAR(100),
    _description            NVARCHAR(500),
    mode_versement_interet  NVARCHAR(100),
    unite_monetaire         NVARCHAR(10),
    duree_blocage_min       NVARCHAR(50),
    duree_blocage_max       NVARCHAR(50),
    taux_interet            DECIMAL(5,4),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
--------------------------------------------------------------------------------------------------------------------------
------- Crédits d'Investissement Famille Info
--------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('silver.erp_produit_cmlt_info', 'U') IS NOT NULL
    DROP TABLE silver.erp_produit_cmlt_info;
GO

CREATE TABLE silver.erp_produit_cmlt_info (
    id_cmlt                         NVARCHAR(20),
    nom_cmlt                        NVARCHAR(100),
    sous_famille                    NVARCHAR(100),
    _description                    NVARCHAR(1000),
    unite_monetaire                 NVARCHAR(10),
    quotite_financement             NVARCHAR(20),
    secteur_investissement          NVARCHAR(100),
    periode_remboursement_max_mois  INT,
    categorie_entreprise            NVARCHAR(100),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
--------------------------------------------------------------------------------------------------------------------------
------- Ligne de Fonctionnement Famille Info 
--------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('silver.erp_produit_ldf_info', 'U') IS NOT NULL
    DROP TABLE silver.erp_produit_ldf_info;
GO
CREATE TABLE silver.erp_produit_ldf_info (
    id_ldf           NVARCHAR(20),
    nom_ldf          NVARCHAR(100),
    sous_famille     NVARCHAR(100),
    unite_monetaire  NVARCHAR(10),
    _type             NVARCHAR(100),
    duree            NVARCHAR(50),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--------------------------------------------------------------------------------------------------------------------------
------- Historique Evenement Infos
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('silver.erp_historique_evenements', 'U') IS NOT NULL
    DROP TABLE silver.erp_historique_evenements;
GO

CREATE TABLE silver.erp_historique_evenements (
    id_evenement     NVARCHAR(50),
    id_entreprise    NVARCHAR(30),
    type_evenement   NVARCHAR(50),
    date_evenement   DATE,
    impact_score     DECIMAL(4,2),
    _description     NVARCHAR(200),
    statut           NVARCHAR(20),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--------------------------------------------------------------------------------------------------------------------------
------- Metriques_Mensuelles Info
--------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('silver.erp_metriques', 'U') IS NOT NULL
    DROP TABLE silver.erp_metriques;
GO

CREATE TABLE silver.erp_metriques (
    id_metrique                 VARCHAR(50) NOT NULL,           -- Identifiant unique (ex: MET_CAF_1_ENT0000_2025-08)
    id_entreprise               VARCHAR(50) NOT NULL,           -- Référence vers l'entreprise (ex: CAF_1_ENT0000)
    annee_mois                  CHAR(7) NOT NULL,               -- Format YYYY-MM (ex: 2025-08)
    solde_moyen_depot           DECIMAL(15,2),                  -- Solde moyen des dépôts
    utilisation_credit_pct      DECIMAL(6,2),                   -- Pourcentage d'utilisation du crédit
    nb_operations               INT,                       -- Nombre d'opérations dans le mois
    nb_contacts_agence          INT,                        -- Nombre de contacts avec l'agence
    nb_connexions_digital       INT,                        -- Nombre de connexions digitales
    satisfaction_score          DECIMAL(3,1),                   -- Score de satisfaction (ex: 4.2, 8.7)
    retard_paiement             NVARCHAR(MAX),                   -- Retard de paiement (True/False -> 1/0)
    nouveau_produit             NVARCHAR(MAX),                   -- Nouveau produit souscrit (True/False -> 1/0)
    reclamation                 NVARCHAR(MAX),                -- Réclamation dans le mois (True/False -> 1/0)
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

