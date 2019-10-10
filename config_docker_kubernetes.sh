kubectl create secret generic regcred \
    --from-file=.dockerconfigjson=/opt/host/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson
