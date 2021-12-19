
# Create .env file to be read by docker-compose.yml

echo Please answer the following questions to configure an .env file.;

# Create MySQL credentials

echo What is the MySQL root password?;

read MYSQL_ROOT_PASSWORD;

echo Who is the MySQL user?;

read MYSQL_USER;

echo What is the MySQL user password?;

read MYSQL_USER_PASSWORD;

echo What is the name of the database?;

read DATABASE_NAME;

# Create .env file

touch .env;

echo "
# service: mysql db
MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
MYSQL_DATABASE=$DATABASE_NAME
MYSQL_USER=$MYSQL_USER
MYSQL_PASSWORD=$MYSQL_USER_PASSWORD
" > .env

echo Created .env file;
