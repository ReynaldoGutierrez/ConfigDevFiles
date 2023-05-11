#!/bin/bash
#cp file to an alternate local directory while renaming it with atimestamp
#add to cron as a job

echo Most recent IP: $DIP
echo dbs is now ready

pwd
cd user_data
cd db
cp database.db ../../../dbcollection/db-`date  +%Y_%m_%d-%H_%M`_ip_${dip}.db
