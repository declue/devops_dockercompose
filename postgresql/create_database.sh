#!/bin/bash


docker exec -it $1 psql -U $2 -c "CREATE DATABASE $3 ENCODING 'UTF8' TEMPLATE template0 LC_COLLATE 'C' LC_CTYPE 'C';"

docker exec -it $1 psql -U $2 -c "GRANT ALL PRIVILEGES ON DATABASE $3 TO $2;"
