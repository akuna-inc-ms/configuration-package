#!/bin/sh -e

psql --variable=ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
    CREATE ROLE akuna WITH LOGIN PASSWORD 'akuna';
    CREATE DATABASE "akuna_db" OWNER = akuna;
    GRANT ALL PRIVILEGES ON DATABASE "akuna_db" TO akuna;
EOSQL