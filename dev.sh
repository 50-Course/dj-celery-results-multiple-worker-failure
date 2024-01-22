#!/usr/bin/env sh

# exit on error
set -e o 

# set terminal colors - red to give sense of failure, and green to give sense of success, default to normal
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# run the dev environment in the background
run_server() {
    echo "${GREEN}Running the dev environment in the background${NC}"
    docker-compose up -d
}

run() {
    case "$1" in
        start)
            run_server
            ;;
        stop)
            docker-compose down
            ;;
        restart)
            docker-compose down
            run_server
            ;;
        rebuild)
            docker-compose build
            run_server
            ;;
        *)
            echo "Usage: <span class="math-inline">0 \{start\|stop\|restart\|rebuild\}"
}
