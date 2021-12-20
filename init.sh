
# Create .env file to be read by docker-compose.yml

echo Please answer the following questions to configure an .env file.;

# Create MySQL credentials

echo What is the MySQL root password?;

read MYSQL_ROOT_PASSWORD;

echo Who is the MySQL user?;

read MYSQL_USER;

echo What is the MySQL user password?;

read MYSQL_USER_PASSWORD;

# Set up .env file

touch .env;

echo "
# service: db
MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
MYSQL_DATABASE=wordpress
MYSQL_USER=$MYSQL_USER
MYSQL_PASSWORD=$MYSQL_USER_PASSWORD
# service: phpmyadmin
PMA_HOST=db
MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
# service: wordpress
WORDPRESS_DB_HOST=db:3306
WORDPRESS_DB_USER=$MYSQL_USER
WORDPRESS_DB_PASSWORD=$MYSQL_USER_PASSWORD
" > .env

echo Created .env file;