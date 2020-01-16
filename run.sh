#!/usr/bin/env bash

DOCKER_STACK_NAME="rabbitmq"

deploy() {
    docker stack deploy -c docker-compose.yml $DOCKER_STACK_NAME
}

rm() {
    docker stack rm $DOCKER_STACK_NAME
}

if [ $1 = "deploy" ]; then
    deploy
fi

if [ $1 = "rm" ]; then
    rm
fi

if [ $1 = "redeploy" ]; then
    rm

    echo -n "Wait 15 seconds for Docker to release all resources"
    for i in {1..15}
    do
        echo -n "."
        sleep 1
    done
    echo ""
    deploy
fi
