all: build


test:
	docker-compose down
	docker container prune -f
	docker volume prune -f
	docker-compose build
	docker-compose up

clean:
	docker-compose down
	docker container prune -f
	docker volume prune -f

build:
	docker build -t courchesnea/dt-middleware:test .

push:
	docker push courchesnea/dt-middleware:test

run:
	docker run courchesnea/dt-middleware:test
