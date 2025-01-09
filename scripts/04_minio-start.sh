#!/bin/bash
docker exec -it minikube mkdir /data/minio
kubectl apply -f ~/flask-app/manifest/minio/minio-ns.yml
kubectl apply -f ~/flask-app/manifest/minio/.
