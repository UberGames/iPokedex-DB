# Originally sourced from https://gist.github.com/carlosefonseca/8334277
# Mercilessly butchered by Tim Oliver

#!/usr/bin/env bash

#delete file if it exists
rm -f ipokedex.sqlite

#create the new database and import the schema
sqlite3 ipokedex.sqlite <<!
.read sql/ipokedex-schema.sql
!

# obtain a list of all tables in the new database
TS=`sqlite3 ipokedex.sqlite "SELECT tbl_name FROM sqlite_master WHERE type='table' and tbl_name not like 'sqlite_%';"`

# import the data in each table
for T in $TS; do
 
sqlite3 ipokedex.sqlite <<!
.headers on
.mode csv $T
.import csv/$T.csv $T
!

done