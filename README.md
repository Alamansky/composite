# Composite

A collection of docker-compose files and associated boilerplate to quickly start new containerized projects.

## Use

Each branch of this repository contains the starter code for a different stack. Use the following command to pull the desired branch:

```
git clone https://github.com/Alamansky/composite.git --branch <branch_name> --single-branch
```

When the branch has been succesfully pulled, delete the existing `.git` directory in the root folder and initialize a new git repository there.

Some branches contain an `init.sh` file that must be run before any containers are started. This file will query the user for credentials required by the containers and store the results in an `.env` file.

The containers can be started manually by opening a terminal in the location of the `docker-compose.yml` file and running the `docker-compose up` command. However, the recommended workflow is to use VSCode in conjunction with the official [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) to manage the containers and leverage VSCode's integrated in-container editing experience. Compatibility with other editors/IDEs is possible but untested.

Once any given container is running, use the command `docker exec -it <container_name_or_id> bash` to gain shell access.
