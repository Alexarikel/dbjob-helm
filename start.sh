#!/bin/sh
while IFS="" read -r line
do
psql -h ${database_url} -p ${port} -U ${postgresdb_user} -d ${db_name} -c "$line"
done < ${input_file}
