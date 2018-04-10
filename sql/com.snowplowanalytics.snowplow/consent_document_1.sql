-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2017-12-18 15:15

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_consent_document_1 (
    "schema_vendor"  VARCHAR(128)   ENCODE RUNLENGTH NOT NULL,
    "schema_name"    VARCHAR(128)   ENCODE RUNLENGTH NOT NULL,
    "schema_format"  VARCHAR(128)   ENCODE RUNLENGTH NOT NULL,
    "schema_version" VARCHAR(128)   ENCODE RUNLENGTH NOT NULL,
    "root_id"        CHAR(36)       ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP      ENCODE LZO       NOT NULL,
    "ref_root"       VARCHAR(255)   ENCODE RUNLENGTH NOT NULL,
    "ref_tree"       VARCHAR(1500)  ENCODE RUNLENGTH NOT NULL,
    "ref_parent"     VARCHAR(255)   ENCODE RUNLENGTH NOT NULL,
    "id"             VARCHAR(36)    ENCODE LZO       NOT NULL,
    "version"        VARCHAR(36)    ENCODE LZO       NOT NULL,
    "description"    VARCHAR(10000) ENCODE LZO,
    "name"           VARCHAR(60)    ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_consent_document_1 IS 'iglu:com.snowplowanalytics.snowplow/consent_document/jsonschema/1-0-0';