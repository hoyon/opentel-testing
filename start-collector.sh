#!/bin/sh

docker run --rm \
      -v "$PWD/otel-local-config.yaml":/otel-local-config.yaml \
      -p 55681:55681 \
      otel/opentelemetry-collector \
      --config otel-local-config.yaml
