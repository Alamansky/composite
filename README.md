# MySQL in Docker

Containerized MySQL database.

## Use

This docker container relies on environment variables to supply the database with correct credentials. Prior to running the container, execute `init.sh` to generate the necessary .env file.

Shell access to the running container is acquired either through a code editor that supports remote development or manually by using the command `docker exec -it <container_name> bash`.

The command `mysql -p` will bring up a prompt for the password specified in the .env file. A slight variation can be used to run a DDL script: `mysql -p < script.sql`. Once authentication is complete, SQL commands can be executed from the command line.

```
-- see available databases
SHOW databases; 

-- select a database to use
USE <database_name>
```







