#!/bin/zsh

PROJ='node-starter'

RESET='\033[0m'
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'

SUCCESS="${GREEN}Done.${NC}"

CMD=$1

case $CMD in
  build)
    echo -e "${YELLOW}Running docker build...${RESET}"
    docker build . -t $USER/$PROJ -f dev.Dockerfile
    rc=$?
    if [[ $rc == 0 ]]
    then
      echo -e $SUCCESS
    else
      echo -e "${RED}Docker build failed.${RESET}"
    fi
  ;;

  start)
    echo -e "${YELLOW}Starting app container (development)...${RESET}"
    echo -e "NOTE: using ctrl-c does not kill the docker container - use the stop command"
    docker run --sig-proxy=false --name $PROJ -v `pwd`:/usr/src/app $USER/$PROJ
    rc=$?
    if [[ $rc == 0 ]]
    then
      echo -e $SUCCESS
    else
      echo -e "${RED}Failed.${RESET}"
    fi
  ;;

  stop)
    echo -e "${YELLOW}Stopping app container...${RESET}"
    docker stop $PROJ
    rc=$?
    if [[ $rc != 0 ]]
    then
      echo -e "${RED}Stop container failed.${RESET}"
      return $rc
    fi

    echo -e "${YELLOW}Removing container...${RESET}"
    docker rm $PROJ
    if [[ $rc != 0 ]]
    then
      echo -e "${RED}Remove container failed.${RESET}"
      return $rc
    fi

    echo $SUCCESS
  ;;


esac

