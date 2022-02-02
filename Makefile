IMAGE     ?= cloud-run
PUBLISHED ?= iamjameshunt/cloud-run

build:
	docker build -t $(IMAGE) .

push: build
	docker tag $(IMAGE) $(PUBLISHED)
	docker push $(PUBLISHED)
