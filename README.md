# Docker and Docker Swarm Utilities

Contains Docker Swarm basic stacks and other utilities.

## Content

1. Logging
    1. [EFK Stack](efk)
    1. [ELK Stack](elk)
1. Networking
    1. [HAProxy](haproxy)
1. Web Servers
    1. [Nginx](nginx)
1. Databases
    1. [MySQL](mysql)
    1. [Postgres](postgres)
    1. [MongoDB](mongo)
    1. [RabbitMQ](rabbitmq)
1. Infrastructure
    1. [Mail Mock Server](mail)
    1. [Portainer](portainer)
    1. [SonarQube](sonarqube)
1. Utilities
    1. [Docker General](system)
    1. [Swarm](swarm)


## Good to know

- Accessing Host from a Docker container:
    
    Hostname: `host.docker.internal`
    
    IP translation on Windows is in `hosts` file, located here: `C:\Windows\System32\drivers\etc`.
    
- Resolving network issues with tcpdump

    Example: `tcpdump -i eth0 port 5432`