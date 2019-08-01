#!/usr/bin/env bash

DUMPDIR=$(mktemp -d -p $PWD -t mongodump-XXXXX)
printf "%s\n" "Output dir will be: $DUMPDIR"
docker run \
	--mount type=bind,source=$DUMPDIR,target=/backup \
	--rm \
	-it kapott/mongodump:3.4 \
	-o /backup/ \
	$@
