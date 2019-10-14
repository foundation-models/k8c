
export DEPLOYMENT_NAME=mnist-deployment
export PROJECT_ID=peaceful-elf-237821
export PROJECT=peaceful-elf-237821
export ZONE=us-central1-a
export WORKING_DIR=$(pwd)
export DOCKER_URL=docker.io/vitachain/mnist
gcloud config set project ${PROJECT_ID}
gcloud config set compute/zone ${ZONE}

export KFAPP=kubeflow
# If using Cloud IAP, create environment variables from the
# OAuth client ID and secret that you obtained earlier:
export CLIENT_ID=981723917756-t9eu4gu9em4o7qlj9colckjenrd5cc84.apps.googleusercontent.com
export CLIENT_SECRET=m8EeKf6HzyAK9YaIiyiGKcTb


