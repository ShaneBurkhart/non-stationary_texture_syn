NAME=text-synth
IMAGE_TAG=shaneburkhart/${NAME}

all: run

build:
	docker build -t ${IMAGE_TAG} .

run:
	docker run --rm -v $(shell pwd):/app ${IMAGE_TAG} ipython /root/parse_emls.py

ipython:
	docker run -it --rm -v $(shell pwd):/app ${IMAGE_TAG}

c:
	docker run -it --rm -v $(shell pwd):/app ${IMAGE_TAG} /bin/bash
