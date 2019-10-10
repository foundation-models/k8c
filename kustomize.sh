kustomize edit add configmap mnist-map-training \
    --from-literal=name=mnist-train-local
export DOCKER_URL=docker.io/vitachain/mnist
kustomize edit set image training-image=$DOCKER_URL
kustomize edit add configmap mnist-map-training --from-literal=trainSteps=200
kustomize edit add configmap mnist-map-training --from-literal=batchSize=100
kustomize edit add configmap mnist-map-training --from-literal=learningRate=0.01

#kustomize edit add configmap mnist-map-serving \
#    --from-literal=name=mnist-service
#kustomize edit add configmap mnist-map-serving \
#    --from-literal=modelBasePath=gs://${BUCKET_NAME}/my-model/export
#kustomize build . | kubectl apply -f -
#kubectl describe service mnist-service
