./utils/setup.php --verbose --osm-file $1 --create-tables
./utils/setup.php --verbose --osm-file $1 --create-partition-functions
./utils/setup.php --verbose --osm-file $1 --create-partition-tables
./utils/setup.php --verbose --osm-file $1 --create-functions
./utils/setup.php --verbose --osm-file $1 --load-data
