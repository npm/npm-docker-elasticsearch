#!/bin/sh
if [ $USE_FUSE = "true" ]; then
  if [ -f $GOPATH/bin/gcsfuse ]; then 
    ES_UID=$(id -u elasticsearch)
    ES_GID=$(id -g elasticsearch)
    mkdir -p /mnt/backup
    $GOPATH/bin/gcsfuse -o allow_other --uid $ES_UID --gid $ES_GID --key-file=$GCS_CREDENTIALS_PATH $GCS_BUCKET /mnt/backup
  fi
fi
/docker-entrypoint.sh elasticsearch $ES_FLAGS
