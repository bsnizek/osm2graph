# run this as postgres user, eg:
# imposm-psqldb > create_db.sh; sudo su postgres; sh ./create_db.sh
set -xe
# createuser --no-superuser --no-createrole --createdb osm
# createdb -E UTF8 -O osm osm
# createlang plpgsql osm
echo "CREATE EXTENSION postgis;" | psql -d osm
echo "ALTER TABLE geometry_columns OWNER TO osm;" | psql -d osm
psql -d osm -f /Library/Python/2.7/site-packages/imposm/900913.sql
echo "ALTER TABLE spatial_ref_sys OWNER TO osm;" | psql -d osm
echo "ALTER USER osm WITH PASSWORD 'osm';" |psql -d osm
echo "host	osm	osm	127.0.0.1/32	md5" >> /Users/besn/Library/Application Support/Postgres/var-9.3 	# <- CHANGE THIS PATH
set +x
echo "Done. Don't forget to restart postgresql!"
