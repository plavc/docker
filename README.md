# Docker and Docker Swarm Utilities

Contains Docker Swarm basic stacks and other utilities.

## Good to know

- Accessing Host from a Docker container:
    
    Hostname: `host.docker.internal`
    
    IP translation on Windows is in `hosts` file, located here: `C:\Windows\System32\drivers\etc`.
    
- Resolving network issues with tcpdump

    Example: `tcpdump -i eth0 port 5432`