SELECT: select geometry_sector,count(*) from placex where rank_search = $1 and indexed_status > 0 group by geometry_sector order by geometry_sector
SELECT: select 0::integer,count(*) from placex where rank_search = $1 and indexed_status > 0
SELECT: select place_id from placex where rank_search = $1 and geometry_sector = $2 and indexed_status > 0
SELECT: select place_id from placex where rank_search = $1 and indexed_status > 0 order by geometry_sector
UPDATE: update placex set indexed_status = 0 where place_id = $1
SELECT: select placex.osm_type, placex.osm_id, placex.class, placex.type, placex.name, placex.housenumber, placex.suitenumber, placex.country_code, ST_AsText(placex.geometry), placex.admin_level, placex.rank_address, placex.rank_search, placex.parent_place_id, parent.osm_type, parent.osm_id, placex.indexed_status from placex left outer join placex as parent on (placex.parent_place_id = parent.place_id) where placex.place_id = $1

SELECT: select osm_type,osm_id,class,type,distance,cached_rank_address,isaddress from place_addressline join placex on (address_place_id = placex.place_id) where place_addressline.place_id = $1 and address_place_id != place_addressline.place_id order by cached_rank_address asc,osm_type,osm_id
SELECT: select (each(name)).key,(each(name)).value from (select name from placex where place_id = $1) as x order by (each(name)).key
SELECT: select (each(extratags)).key,(each(extratags)).value from (select extratags from placex where place_id = $1) as x order by (each(extratags)).key

