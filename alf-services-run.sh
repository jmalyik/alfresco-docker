cd ${KSZDR_DOCKER_DIR}

docker-compose -f alf-services.yml down
docker-compose -f alf-services.yml up -d --build
sleep 3
