#!/bin/bash

HOST_DATADIR=/home/web/demo.qgis.org
BTSYNC_IMAGE=qgis-btsync

docker kill ${BTSYNC_IMAGE}
docker rm ${BTSYNC_IMAGE}

mkdir -p ${HOST_DATADIR}

docker run --name="${BTSYNC_IMAGE}" \
	-v ${HOST_DATADIR}:/web \
	-p 8888:8888 \
	-p 55555:55555 \
	-d -t kartoza/${BTSYNC_IMAGE}


