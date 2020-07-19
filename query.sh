#!/bin/bash
 
/Program Files/PostgreSQL/11/bin/psql -U report -d db_deploy -c "select * from public.dept" > /home/PostgreSQL/db/scripts/appl.dat
