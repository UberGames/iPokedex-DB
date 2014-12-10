# Originally sourced from https://gist.github.com/carlosefonseca/8334277
# Mercilessly butchered by Tim Oliver

#!/usr/bin/env bash
 
# obtains all data tables from database
TS=`sqlite3 ipokedex.sqlite "SELECT tbl_name FROM sqlite_master WHERE type='table' and tbl_name not like 'sqlite_%';"`
 
#export the schema
sqlite3 ipokedex.sqlite <<!
.output sql/ipokedex-schema.sql
.schema
!

# export each table to csv
for T in $TS; do
 
sqlite3 ipokedex.sqlite <<!
.headers on
.mode csv
.output csv/$T.csv
select * from $T;
!
 
done