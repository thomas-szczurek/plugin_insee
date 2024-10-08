CREATE TABLE insee.correspondance_clefs_champs (
	pk_id int4 GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	nom_champ_insee text NOT NULL,
	clef_json text NOT NULL,
	description text,
	fk_base int2 NOT NULL,
    constraint correspondance_clefs_champs_nom_champ_unique unique (nom_champ_insee, fk_base),
    constraint fk_correspondance_base foreign key (fk_base) references insee.bases (pk_id) ON UPDATE NO ACTION ON DELETE NO ACTION
);
