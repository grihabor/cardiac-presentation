IMAGE=grihabor/landslide

all: presentation

presentation:
	docker-compose up --build

.PHONY: presentation all
