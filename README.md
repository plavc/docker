# RabbitMQ Docker Swarm Stack


**Join Cluster**
```
#!/usr/bin/env bash
# RabbitMQ Join Cluster. Copyright (c) 2019, gregor@plavcak.net

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this as it depends on your app

# Stop and reset node 
rabbitmqctl stop_app
rabbitmqctl reset

# Join lead node in cluster, rabbbit@node1, node1 must be accesible on network (hostname)
rabbitmqctl join_cluster ${RABBITMQ_LEAD_NODENAME}

# start node
rabbitmqctl start_app

# enable managment agent plugin
rabbitmq-plugins enable rabbitmq_management_agent

echo $__dir
echo $__file
echo $__base
echo $__root
```

**Refresh Server Script**

```
rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl join_cluster rabbit@rmq-master
start_app
rabbitmq-plugins enable rabbitmq_management_agent
```