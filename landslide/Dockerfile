FROM python:3-alpine
MAINTAINER Borodin Gregory <grihabor@mail.ru>

RUN pip3 install --no-cache-dir \
        landslide \
	watchdog

ENV LANDSLIDE_THEME default

ADD entrypoint.sh /landslide/entrypoint.sh

CMD ["/bin/sh",  "/landslide/entrypoint.sh"]

