# Docker and Docker Swarm Utilities

Contains Docker Swarm basic stacks and other utilities.

## Content

1. Logging
    1. [EFK Stack](https://github.com/plavc/docker/blob/master/efk/README.md)
    1. [ELK Stack](https://github.com/plavc/docker/blob/master/elk/README.md)
3. Networking
    1. [HAProxy](https://github.com/plavc/docker/blob/master/haproxy/README.md)
1. Databases
    1. [MySQL](https://github.com/plavc/docker/blob/master/mysql/README.md)
    1. [Postgres](https://github.com/plavc/docker/blob/master/postgres/README.md)
    1. [MongoDB](https://github.com/plavc/docker/blob/master/mongo/README.md)
    1. [RabbitMQ](https://github.com/plavc/docker/blob/master/rabbitmq/README.md)
1. Infrastructure
    1. [Mail Mock Server](https://github.com/plavc/docker/blob/master/mail/README.md)
    1. [Portainer](https://github.com/plavc/docker/blob/master/portainer/README.md)
    1. [SonarQube](https://github.com/plavc/docker/blob/master/sonarqube/README.md)
1. Utilities
    1. [Docker General](https://github.com/plavc/docker/blob/master/system/README.md)
    1. [Swarm](https://github.com/plavc/docker/blob/master/swarm/README.md)


## Good to know

- Accessing Host from a Docker container:
    
    Hostname: `host.docker.internal`
    
    IP translation on Windows is in `hosts` file, located here: `C:\Windows\System32\drivers\etc`.
    
- Resolving network issues with tcpdump

    Example: `tcpdump -i eth0 port 5432`