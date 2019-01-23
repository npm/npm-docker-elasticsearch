#!/bin/sh
if [ $USE_FUSE = "true" ]; then
  if [ -f $GOPATH/bin/gcsfuse ]; then 
    mkdir -p /mnt/backup
    $GOPATH/bin/gcsfuse --key-file=$GCS_CREDENTIALS_PATH $GCS_BUCKET /mnt/backup
  fi
fi
/docker-entrypoint.sh elasticsearch $ES_FLAGS
