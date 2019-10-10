#Removing the embedded root certificate from ~/.kube/config and running this config command:


# us-central1-a/mnist-deplyment?project=peaceful-elf-237821
export KUBE_CONTEXT=$(kubectl config current-context)
echo ${KUBE_CONTEXT}
kubectl config set-cluster ${KUBE_CONTEXT} --insecure-skip-tls-verify=true \
--server=${KUBE_CONTEXT}