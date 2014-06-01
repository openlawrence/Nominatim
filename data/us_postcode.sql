--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: us_postcode; Type: TABLE; Schema: public; Owner: mqmgr; Tablespace: 
--

CREATE TABLE us_postcode (
    postcode text,
    x double precision,
    y double precision
);


-- this user does not exist
--ALTER TABLE public.us_postcode OWNER TO mqmgr;

--
-- Data for Name: us_postcode; Type: TABLE DATA; Schema: public; Owner: mqmgr
--



--
-- PostgreSQL database dump complete
--

