
CREATE TABLE eve_user_bpartner
(
  eve_user_bpartner_id numeric(10,0) NOT NULL,
  eve_user_bpartner_uu character varying(36) DEFAULT NULL::character varying,
  ad_client_id numeric(10,0) NOT NULL,
  ad_org_id numeric(10,0) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby numeric(10,0) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  ad_user_id numeric(10,0) NOT NULL,
  c_bpartner_id numeric(10,0) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE eve_user_bpartner
  OWNER TO adempiere;
	
alter table ad_user add eve_bpartners character varying(36) DEFAULT NULL
