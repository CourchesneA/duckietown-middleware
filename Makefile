all: build

build:
	docker build -t courchesnea/dt-middleware:test .

push:
	docker push courchesnea/dt-middleware:test

run:
	docker run courchesnea/dt-middleware:test

