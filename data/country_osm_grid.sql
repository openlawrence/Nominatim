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
-- Name: country_osm_grid; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE country_osm_grid (
    country_code character varying(2),
    area double precision,
    geometry geometry
);


--
-- Data for Name: country_osm_grid; Type: TABLE DATA; Schema: public; Owner: -
--


--
-- Name: idx_country_osm_grid_geometry; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX idx_country_osm_grid_geometry ON country_osm_grid USING gist (geometry);


--
-- PostgreSQL database dump complete
--

