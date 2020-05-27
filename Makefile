all: build

build:
	docker build -t courchesnea/dt-middleware:test .

test:
	docker-compose down
	docker container prune
	docker volume prune
	docker-compose build
	docker-compose up

push:
	docker push courchesnea/dt-middleware:test

run:
	docker run courchesnea/dt-middleware:test

