SHA := latest
TAG := latest
IMAGE_TAG := ${REGISTRY_URL}/library/pipeline-demo

build:
	docker build -t ${IMAGE_TAG}:${SHA} docker/

shell: build
	docker run -it ${IMAGE_TAG}:${SHA} /bin/sh

push: 
	docker push ${IMAGE_TAG}:${SHA}

tag:
	docker tag ${IMAGE_TAG}:${SHA} ${IMAGE_TAG}:${TAG}

run: build
	docker run -it -p 8080:80 ${IMAGE_TAG}:${SHA} /bin/sh

apply:
	kubectx rke-app-cluster
	kubectl apply -f deployment.yaml -n pipeline-demo

rolling-update:
	kubectl rollout restart nginx