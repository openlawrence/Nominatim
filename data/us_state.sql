BEGIN;
CREATE TABLE "us_state" (gid serial PRIMARY KEY,
"area" float8,
"perimeter" float8,
"statesp020" int8,
"state" varchar(20),
"state_fips" varchar(2),
"order_adm" int4,
"month_adm" varchar(18),
"day_adm" int8,
"year_adm" int8);
SELECT AddGeometryColumn('','us_state','the_geom','4326','MULTIPOLYGON',2);

END;
