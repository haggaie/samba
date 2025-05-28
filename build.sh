#!/bin/bash

tag=$(git rev-parse --short HEAD)
docker build -t registry.k8s.lan:5000/samba:$tag .
docker push registry.k8s.lan:5000/samba:$tag
