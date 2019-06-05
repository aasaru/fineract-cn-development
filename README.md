# fineract-cn-development
Get started with developing fineract-cn-* projects locally

NB! This is still work in progress

## Prepare development environment

You need MySQL 5.7 and NoSQL database Cassandra 3.11 running.
For development we fire up these from Docker container and fill the database with needed data.

cd databases
docker-compose up



## Generate Public Keys

You 


## Send some request with Postman

Install postman
Import two files from /postman directory into Postman.

Now you should be able to start firing request to your 


# Maintenance 

Renew backup files.

-- get docker container_id:

docker ps 

-- then replace it here:

docker exec CONTAINER_ID /usr/bin/mysqldump -u root --password=mysql seshat > 01_seshat.sql
docker exec CONTAINER_ID /usr/bin/mysqldump -u root --password=mysql playground > 02_playground.sql
