# EFK Stack on Docker Swarm

Elasticsearch + Fluentd + Kibana (EFK) Stack on Docker Swarm.

## Usage

- Deploy stack

    `./run stack deploy`

- Remove stack

    `./run stack rm`

- Remove and deploy stack

    `./run stack redeploy`

- Build Fluentd image

    `./run fluentd build`

- Remove Fluentd Service and config *(developement porpose)*

    `./run fluentd rm`

- Teest Fluentd

    `./run fluentd test`
