.PHONY:	all

TAG = 0.1.0
HL_DOCKER_BASE_IMAGE = mwrona/prometheus-nats-exporter
REPO_IMAGE_TAG = $(HL_DOCKER_BASE_IMAGE):$(TAG)
REPO_IMAGE_LATEST = $(HL_DOCKER_BASE_IMAGE):latest

all: docker-build

docker-build:
	docker build -t $(REPO_IMAGE_TAG) -t $(REPO_IMAGE_LATEST) .

docker-run:
	docker run $(REPO_IMAGE_TAG)

docker-push:
	docker push $(REPO_IMAGE_TAG)
	docker push $(REPO_IMAGE_LATEST)