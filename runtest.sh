
#bash prepare_step1.sh data/255_michigan.osm
#bash prepare_step2.sh data/255_michigan.osm
#bash prepare_step3.sh data/255_michigan.osm
./utils/setup.php --verbose --osm-file data/255_michigan.osm --all > log/setup.log 2>&1

php ./website/search_cli.php -f xml -q "255  Michigan Street STE 6-30" >> log/setup.log 2>&1

pg_dump nominatim > log/dump.txt
