#!/bin/sh
while IFS="" read -r line
do
psql -h ${database_url} -p ${port} -U ${db_user} -d ${db_name} -c "$line"
done < ${input_file}
