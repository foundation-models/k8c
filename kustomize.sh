kustomize edit add configmap mnist-map-serving \
    --from-literal=name=mnist-service
kustomize edit add configmap mnist-map-serving \
    --from-literal=modelBasePath=gs://${BUCKET_NAME}/my-model/export
kustomize build . | kubectl apply -f -
kubectl describe service mnist-service
