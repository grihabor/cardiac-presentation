IMAGE=grihabor/landslide

all: presentation

presentation:
	docker-compose up --build --force-recreate

.PHONY: presentation all
