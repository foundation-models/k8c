export DEPLOYMENT_NAME=mnist-deployment
export PROJECT_ID=peaceful-elf-237821
export ZONE=us-central1-a
export WORKING_DIR=$(pwd)
export DOCKER_URL=docker.io/vitachain/mnist
gcloud config set project ${PROJECT_ID}
gcloud config set compute/zone ${ZONE}

