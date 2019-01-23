#!/bin/sh
if [ -f $GOPATH/bin/gcsfuse ]; then $GOPATH/bin/gcsfuse --key-file=$GCS_CREDENTIALS_PATH $GCS_BUCKET /mnt/backup; fi
/docker-entrypoint.sh elasticsearch $ES_FLAGS
