# Prisma in Docker

Containerized Prisma backend

## Use

NOTE: This branch is not tested, maintained, or recommended for use; it was built for Prisma 1 which is no longer being developed. At some point this may be re-worked for compatibility with Prisma 2 or a modern alternative. In the meantime it exists only for archival purposes.

To set up Prisma and Yoga, use the following commands:

On host machine:

1. Set up .env file: `./init.sh`
2. Start containers (database, prisma and node): `docker-compose up`
3. Bash into node container: `docker-attach <node> bash`

In node container:

1. Initialize package.json: `npm init -y` 
2. Install dependencies: `./install.sh`
3. Initialize prisma on container port (not localhost): `prisma init --endpoint http://prisma:4466`
4. Add secret and generate fields for prisma.yml: ``./update-prisma-config.sh``
5. Generate prisma client lib: `prisma generate`
6. Deploy: `prisma deploy`
7. Generate starter schema file for yoga: `./create-schema.sh`
8. Start dev server: `npx nodemon index.js`

