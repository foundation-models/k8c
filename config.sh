export DEPLOYMENT_NAME=kubeflow-codelab
export PROJECT_ID=peaceful-elf-237821
export ZONE=us-west1-b
gcloud config set project ${PROJECT_ID}
gcloud config set compute/zone ${ZONE}
