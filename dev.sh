#!/usr/bin/env sh

# exit on error
set -e 

# set terminal colors - red to give sense of failure, and green to give sense of success, default to normal
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# run the dev environment in the background
run_server() {
    echo "${GREEN}Running the dev environment in the background${NC}"
    docker compose up -d
}

# restart the dev environment
restart_server() {
    stop_server
    run_server
}

# stop the dev environment
stop_server() {
    echo "${RED}Stopping the dev environment${NC}"
    docker compose down
}

# rebuild the dev environment
rebuild_server() {
    echo "${GREEN}Rebuilding the dev environment${NC}"
    docker compose build --no-cache
    run_server
}

run() {
    case "$1" in
        start)
            run_server
            ;;
        stop)
            stop_server
            ;;
        restart)
            restart_server
            ;;
        rebuild)
            rebuild_server
            ;;
        *)
            echo "Usage: $0 {start|stop|restart|rebuild}"
            exit 1
            ;;
    esac
}

run "$@"
