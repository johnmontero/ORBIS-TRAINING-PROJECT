.PHONNY: install   \
		 resources \
		 start     \
		 release   \
		 greet     \
		 resources

include makefiles/task.mk
include makefiles/deploy-ghpages.mk

NAME_IMAGE = dtizonportilla/orbis-training-docker
DOCKER_TAG = 2.0.0
DOCKER_IMAGE = ${NAME_IMAGE}:${DOCKER_TAG}
NAME = 'Claudia Valdivieso'

install:
	docker run \
		--tty=false \
		-it \
		--rm \
		--volume ${PWD}:/app \
		${DOCKER_IMAGE} npm install

start:
	docker run \
		--tty=false \
		-it \
		--rm \
		-p 3030:1042 \
		--volume ${PWD}:/app \
		${DOCKER_IMAGE} \
		npm start

release:
	docker run \
		--tty=false \
		-it \
		--rm \
		-p 3030:1042 \
		--volume ${PWD}:/app \
		${DOCKER_IMAGE} \
		npm run release

greet:
	docker run \
		--tty=false \
		-it \
		--entrypoint=/app/resources/example.sh \
		--rm  \
		--volume ${PWD}:/app \
		-e NAME=${NAME} \
		${DOCKER_IMAGE}

resources:
	@echo 'Hola recursos!'
