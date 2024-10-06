WITH d AS (
	SELECT "CODGEO",
		   regexp_replace('pop_15_64_ans_p,' || "POP1564_P" || ',
						pop_15_24_ans_p,' || "POP1524_P" || ',
						pop_25_54_ans_p,' || "POP2554_P" || ',
						pop_55_64_ans_p,' || "POP5564_P" || ',
						hommes_15_64_ans_p,' || "H1564_P" || ',
						hommes_15_24_ans_p,' || "H1524_P" || ',
						hommes_25_54_ans_p,' || "H2554_P" || ',
						hommes_55_64_ans_p,' || "H5564_P" || ',
						femmes_15_64_ans_p,' || "F1564_P" || ',
						femmes_15_24_ans_p,' || "F1524_P" || ',
						femmes_25_54_ans_p,' || "F2554_P" || ',
						femmes_55_64_ans_p,' || "F5564_P" || ',
						actifs_15_64_ans_p,' || "ACT1564_P" || ',
						actifs_15_24_ans_p,' || "ACT1524_P" || ',
						actifs_25_54_ans_p,' || "ACT2554_P" || ',
						actifs_55_64_ans_p,' || "ACT5564_P" || ',
						actifs_hommes_15_64_ans_p,' || "HACT1564_P" || ',
						actifs_hommes_15_24_ans_p,' || "HACT1524_P" || ',
						actifs_hommes_25_54_ans_p,' || "HACT2554_P" || ',
						actifs_hommes_55_64_ans_p,' || "HACT5564_P" || ',
						actifs_femmes_15_64_ans_p,' || "FACT1564_P" || ',
						actifs_femmes_15_24_ans_p,' || "FACT1524_P" || ',
						actifs_femmes_25_54_ans_p,' || "FACT2554_P" || ',
						actifs_femmes_55_64_ans_p,' || "FACT5564_P" || ',
						actifs_occupes_15_64_ans_p,' || "ACTOCC1564_P" || ',
						actifs_occupes_15_24_ans_p,' || "ACTOCC1524_P" || ',
						actifs_occupes_25_54_ans_p,' || "ACTOCC2554_P" || ',
						actifs_occupes_55_64_ans_p,' || "ACTOCC5564_P" || ',
						hommes_actifs_occupes_15_64_ans_p,' || "HACTOCC1564_P" || ',
						hommes_actifs_occupes_15_24_ans_p,' || "HACTOCC1524_P" || ',
						hommes_actifs_occupes_25_54_ans_p,' || "HACTOCC2554_P" || ',
						hommes_actifs_occupes_55_64_ans_p,' || "HACTOCC5564_P" || ',
						femmes_actifs_occupes_15_64_ans_p,' || "FACTOCC1564_P" || ',
						femmes_actifs_occupes_15_24_ans_p,' || "FACTOCC1524_P" || ',
						femmes_actifs_occupes_25_54_ans_p,' || "FACTOCC2554_P" || ',
						femmes_actifs_occupes_55_64_ans_p,' || "FACTOCC5564_P" || ',
						chomeurs_15_64_ans_p,' || "CHOM1564_P" || ',
						chomeurs_15_24_ans_p,' || "CHOM1524_P" || ',
						chomeurs_25_54_ans_p,' || "CHOM2554_P" || ',
						chomeurs_55_64_ans_p,' || "CHOM55P_P" || ',
						chomeurs_sans_diplome_ou_cep_p,' || "CHOM_DIPLMIN_P" || ',
						chomeurs_bepc_p,' || "CHOM_BEPC_P" || ',
						chomeurs_cap_bep_p,' || "CHOM_CAPBEP_P" || ',
						chomeurs_bac_p,' || "CHOM_BAC_P" || ',
						chomeurs_bac_plus_2_p,' || "CHOM_SUP2_P" || ',
						chomeurs_bac_plus_3_4_p,' || "CHOM_SUP34_P" || ',
						chomeurs_bac_plus_5_ou_sup_p,' || "CHOM_SUP5_P" || ',
						actifs_sans_diplome_ou_cep_p,' || "ACT_DIPLMIN_P" || ',
						actifs_bepc_p,' || "ACT_BEPC_P" || ',
						actifs_cap_bep_p,' || "ACT_CAPBEP_P" || ',
						actifs_bac_p,' || "ACT_BAC_P" || ',
						actifs_bac_plus_2_p,' || "ACT_SUP2_P" || ',
						actifs_bac_plus_3_4_p,' || "ACT_SUP34_P" || ',
						actifs_bac_plus_5_ou_sup_p,' || "ACT_SUP5_P" || ',
						inactifs_15_64_ans_p,' || "INACT1564_P" || ',
						eleves_etudiants_stagiares_15_64_ans_p,' || "ETUD1564_P" || ',
						retraites_preretraites_15_64_ans_p,' || "RETR1564_P" || ',
						autres_inactifs_15_64_ans_p,' || "AINACT1564_P" || ',
						actifs_15_64_ans_c,' || "ACT1564_C" || ',
						actifs_agriculteurs_15_64_ans_c,' || "ACT1564_CS1_C" || ',
						actifs_artisants_commercants_chefs_entreprise_15_64_ans_c,' || "ACT1564_CS2_C" || ',
						actifs_cadres_prof_intellectuelles_sup_15_64_ans_c,' || "ACT1564_CS3_C" || ',
						actifs_prof_intermediaires_15_64_ans_c,' || "ACT1564_CS4_C" || ',
						actifs_employes_15_64_ans_c,' || "ACT1564_CS5_C" || ',
						actifs_ouvriers_15_64_ans_c,' || "ACT1564_CS6_C" || ',
						actifs_occupes_15_64_ans_c,' || "ACTOCC1564_C" || ',
						actifs_occupes_agriculteurs_15_64_ans_c,' || "ACTOCC1564_CS1_C" || ',
						actifs_occupes_artisants_commercants_chefs_entreprise_15_64_ans_c,' || "ACTOCC1564_CS2_C" || ',
						actifs_occupes_cadres_prof_intellectuelles_sup_15_64_ans_c,' || "ACTOCC1564_CS3_C" || ',
						actifs_occupes_prof_intermediaires_15_64_ans_c,' || "ACTOCC1564_CS4_C" || ',					
						actifs_occupes_employes_15_64_ans_c,' || "ACTOCC1564_CS5_C" || ',
						actifs_occupes_ouvriers_15_64_ans_c,' || "ACTOCC1564_CS6_C" || ',
						emplois_au_lieu_travail_p,' || "EMPLT_P" || ',
						actifs_occupes_p,' || "ACTOCC_P" || ',
						pop_15_ans_plus_p,' || "POP15P_P" || ',
						actifs_15_ans_plus_p,' || "ACT15P_P" || ',
						emploi_salarie_au_lieu_travail_p,' || "EMPLT_SAL_P" || ',
						emploi_salarie_au_lieu_travail_femmes_p,' || "EMPLT_FSAL_P" || ',
						emploi_salarie_temps_plein_au_lieu_travail_p,' || "EMPLT_SALTP_P" || ',
						emploi_non_salarie_au_lieu_travail_p,' || "EMPLT_NSAL_P" || ',
						emploi_non_salarie_au_lieu_travail_femmes_p,' || "EMPLT_FNSAL_P" || ',
						emploi_non_salarie_temps_plein_au_lieu_travail_p,' || "EMPLT_NSALTP_P" || ',
						emplois_au_lieu_travail_c,' || "EMPLT_C" || ',
						agriculteurs_au_lieu_travail_c,' || "EMPLT_CS1_C" || ',
						artisants_commercants_chefs_entreprise_au_lieu_travail_c,' || "EMPLT_CS2_C" || ',
						cadres_prof_intellectuelles_sup_au_lieu_travail_c,' || "EMPLT_CS3_C" || ',
						prof_intermediaires_au_lieu_travail_c,' || "EMPLT_CS4_C" || ',
						employes_au_lieu_travail_c,' || "EMPLT_CS5_C" || ',
						ouvriers_au_lieu_travail_c,' || "EMPLT_CS6_C" || ',
						emplois_au_lieu_travail_agriculture_c,' || "EMPLT_AGRI_C" || ',
						emplois_au_lieu_travail_industrie_c,' || "EMPLT_INDUS_C" || ',
						emplois_au_lieu_travial_construction_c,' || "EMPLT_CONST_C" || ',
						emplois_au_lieu_travail_commerce_transport_services_c,' || "EMPLT_CTS_C" || ',
						emplois_au_lieu_travail_admin_publique_enseignement_sante_action_sociale_c,' || "EMPLT_APESAS_C" || ',
						emplois_au_lieu_travail_femmes_c,' || "EMPLT_F_C" || ',
						emplois_au_lieu_travail_agriculture_femmes_c,' || "AGRILT_F_C" || ',
						emplois_au_lieu_travail_industrie_femmes_c,' || "INDUSLT_F_C" || ',
						emplois_au_lieu_travail_construction_femmes_c,' || "CONSTLT_F_C" || ',
						emplois_au_lieu_travail_commerce_transport_services_femmes_c,' || "CTSLT_F_C" || ',
						emplois_au_lieu_travail_admin_publique_enseignement_sante_action_sociale_femmes_c,' || "APESASLT_F_C" || ',
						emplois_salaries_au_lieu_travail_c,' || "EMPLT_SAL_C" || ',
						emplois_salaries_au_lieu_travail_agriculture_c,' || "AGRILT_SAL_C" || ',
						emplois_salaries_au_lieu_travail_industrie_c,' || "INDUSLT_SAL_C" || ',
						emplois_salaries_au_lieu_travail_construction_c,' || "CONSTLT_SAL_C" || ',
						emplois_salaries_au_lieu_travail_commerce_transport_services_c,' || "CTSLT_SAL_C" || ',
						emplois_salaries_au_lieu_travail_admin_publique_enseignement_sante_action_sociale_c,' || "APESASLT_SAL_C" || ',
						emplois_salaries_au_lieu_travail_agriculture_femmes_c,' || "AGRILT_FSAL_C" || ',
						emplois_salaries_au_lieu_travail_industrie_femmes_c,' || "INDUSLT_FSAL_C" || ',
						emplois_salaries_au_lieu_travail_construction_femmes_c,' || "CONSTLT_FSAL_C" || ',
						emplois_salaries_au_lieu_travail_commerce_transport_services_femmes_c,' || "CTSLT_FSAL_C" || ',
						emplois_salaries_au_lieu_travail_admin_publique_enseignement_sante_action_sociale_femmes_c,' || "APESASLT_FSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_agriculture_c,' || "AGRILT_NSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_industrie_c,' || "INDUSLT_NSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_construction_c,' || "CONSTLT_NSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_c_commerce_transport_services_c,' || "CTSLT_NSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_admin_publique_enseignement_sante_action_sociale_c,' || "APESASLT_NSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_agriculture_femmes_c,' || "AGRILT_FNSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_industrie_femmes_c,' || "INDUSLT_FNSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_construction_femmes_c,' || "CONSTLT_FNSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_c_commerce_transport_services_femmes_c,' || "CTSLT_FNSAL_C" || ',
						emplois_non_salaries_au_lieu_travail_admin_publique_enseignement_sante_action_sociale_femmes_c,' || "APESASLT_FNSAL_C" || ',	
						chomeurs_15_64_ans_hommes_p,' || "HCHOM1564_P" || ',
						chomeurs_15_24_ans_hommes_p,' || "HCHOM1524_P" || ',
						chomeurs_55_64_ans_hommes_p,' || "HCHOM2554_P" || ',
						chomeurs_25_54_ans_hommes_p,' || "HCHOM5564_P" || ',
						chomeurs_15_64_ans_femmes_p,' || "FCHOM1564_P" || ',
						chomeurs_15_24_ans_femmes_p,' || "FCHOM1524_P" || ',
						chomeurs_55_64_ans_femmes_p,' || "FCHOM2554_P" || ',
						chomeurs_25_54_ans_femmes_p,' || "FCHOM5564_P",
					E'[\t\n\r]','','g') AS data
	FROM insee.rp_activite_residents_import
)
INSERT INTO insee.donnees_communes("annee","fk_base","donnees", "code_commune")
SELECT
	   2020,
	   5,
	   jsonb_object(string_to_array(data::text,',')),
	   "CODGEO"
FROM d
ORDER BY "CODGEO"
