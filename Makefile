IMAGE=grihabor/landslide

all: presentation

build:
	docker build . \
		-t $(IMAGE)

presentation: build
	docker run \
		-v $(shell pwd)/src:/src \
		-v $(shell pwd)/build:/build \
		$(IMAGE) \
		sh -c "cd /build; landslide /src/index.rst"

nginx:
	cd nginx; make

.PHONY: nginx build presentation all
