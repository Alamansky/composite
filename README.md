# Wordpress in Docker

Containerized Worpress installation with phpMyAdmin and WP-CLI.

## Use

The docker containers defined in `docker-compose.yml` rely on environment variables to handle credentials. Prior to running the containers, execute `init.sh` to generate the necessary .env file.

This Wordpress setup uses 4 seperate containers:
1. A MySQL container to run the database
2. A PHP container to run the actual Wordpress instalation
3. A PHP container to run phpMyAdmin (GUI for database admin)
4. A PHP container to run the Wordpress CLI

Running `docker-compose up` will start all of these containers in the correct order. However, the recommended method for active development is to use a remote-compatible editor like VSCode; the `.devcontainer/devcontainer.json` file is configured to launch the editor inside of the Wordpress container for access to all WP files.

The Wordpress site listens to port 80 by default. so it will be available at `localhost` with the installation wizard ready to go. The phpMyAdmin tool is accessible at `localhost:8081`. 

The Wordpress CLI will exit with code 1, and therefore shut down its container, until the MySQL database is correctly configured by the Wordpress installation wizard. To use the CLI before going through the installation process, the container can be manually re-started with the command `docker-compose run --rm cli bash`. After installation is complete, the container is able to run in the background and can be accessed with the command `docker exec -it <containerIdOrName> bash`. The CLI is invoked with the command `wp` and has a [variety of useful commands](https://developer.wordpress.org/cli/commands/).



