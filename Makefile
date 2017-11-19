IMAGE=grihabor/landslide

all: presentation

build:
	docker build . \
		-t $(IMAGE)

presentation: build
	docker run \
		-v $(shell pwd)/src:/src \
		$(IMAGE) \
		sh -c "cd /src; landslide /src/index.rst"
