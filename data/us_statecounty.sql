BEGIN;
CREATE TABLE "us_statecounty" (gid serial PRIMARY KEY,
"area" float8,
"perimeter" float8,
"countyp020" int8,
"state" varchar(2),
"county" varchar(50),
"fips" varchar(5),
"state_fips" varchar(2),
"square_mil" float8);
SELECT AddGeometryColumn('','us_statecounty','the_geom','4326','MULTIPOLYGON',2);

END;
