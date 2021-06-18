# SpectX on Docker Swarm

SpectX in Docker.

https://hub.docker.com/r/spectx/spectx

Define Spectx License in `config/spectx.lic`. If you don't have license yet, remove configuration from docker-compose.yml (License will be requested at the first start of web interface).

## Usage

- Deploy stack

    `./run stack deploy`

- Remove stack

    `./run stack rm`

- Remove and deploy stack

    `./run stack redeploy`

