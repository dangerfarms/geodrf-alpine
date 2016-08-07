# This image provides containers that can connect to a postGIS database instance.
FROM python:3-alpine
ENV CFLAGS="$CFLAGS -L/lib"
RUN apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
	bash \
	binutils \
	curl \
	gcc \
	gdal \
	geos \
	git \
	jpeg-dev \
    libffi-dev \
    libpq \
	linux-headers \
	musl-dev \
	proj4-dev \
	postgresql-dev \
    zlib-dev && \
	rm -rf /var/cache/apk/*
RUN ln -s /usr/lib/libgeos_c.so.1 /usr/local/lib/libgeos_c.so
RUN ln -s /usr/lib/libgdal.20.so /usr/local/lib/libgdal.so
RUN pip install --upgrade pip
