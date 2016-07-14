-- Revert fips_codes:counties_fips from pg


SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

BEGIN;

ALTER TABLE ONLY public.counties_fips DROP CONSTRAINT counties_fips_pkey;
DROP TABLE public.counties_fips;

COMMIT;
