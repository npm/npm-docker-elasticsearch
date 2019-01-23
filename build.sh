#rt!/bin/sh
HASH=$(git rev-parse --short HEAD)
docker build . --tag=npmwharf/elasticsearch-gcs:2.4-alpine-$HASH
