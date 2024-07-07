CREATE TABLE insee.bases (
	pk_id int4 GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	nom text NOT NULL,
	fk_source int2 NOT NULL,
	description text NOT NULL,
	notes text,
	CONSTRAINT fk_bases_sources FOREIGN KEY (fk_source) REFERENCES insee.sources (pk_id) ON UPDATE CASCADE ON DELETE NO ACTION
);
