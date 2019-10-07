gcloud container clusters get-credentials \
    $DEPLOYMENT_NAME --zone $ZONE --project $PROJECT_ID
kubectl config set-context $(kubectl config current-context) --namespace=kubeflow
kubectl get all
