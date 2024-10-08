# Short Links App

This is the repo for the backend structure of the system. You can run it using docker compose by simply setting up Docker on your machine (you can find more info [here](https://docs.docker.com/get-started/get-docker/)).

After that, with Docker service running, set up the [environment vars](#environment-vars).

## Environment Vars

|Variable Name|Example|Usage|
|-|-|-|
|ENGINE_SHORT_URL_CHARACTERS|6|Defines the length of generated URLs|
|ENGINE_ALPHABET|1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcde[...]|The alphabet of allowed characters on URL creation|
|ENGINE_PORT|8355|Port binded to the backend Engine|
|ENNGINE_ENABLE_GUEST_SHORTENING|true|Enables if unauthenticated users can create shortened URLs|
|POSTGRES_HOSTNAME|database|The hostname for the database service|
|POSTGRES_PORT|5432|The port for the database|
|POSTGRES_USER|postgres|The username for the database|
|POSTGRES_PASSWORD|senhasegurabancopostgres|The password for the database|
|POSTGRES_DB|postgres|The name of the database|
|REDIS_HOSTNAME|auth_database|The hostname for the auth database|
|REDIS_PORT|6379|The port for the auth database|
|REDIS_USERNAME|keydb|The username for the auth database|
|REDIS_PASSWORD|senhasegurabancokeydb|The password for the auth database|
|REDIS_BEARER_TOKEN_LIFETIME|1800|The lifetime of user generated tokens|

`POSTGRES_HOSTNAME` and `REDIS_HOSTNAME` must respect the `container_name` parameter configured for each one in the `compose.yaml` file. All of that can be found on the .env file I created. Docker compose will setup the .env file on each container.

## Running the Project

After cloning the project, run the commands to retrieve the project submodules:

```
git submodule init
git submodule update --remote
```

Start up the project using `docker compose up`. It will create an instance for the App Engine, inflate the database and setup the authentication server. Wait for the engine to display `starting \`node index.js\``, then you're good to go.