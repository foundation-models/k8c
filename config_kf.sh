# Run the following commands for the default installation which uses Cloud IAP:
export CONFIG="https://raw.githubusercontent.com/kubeflow/kubeflow/cfb336b7/bootstrap/config/kfctl_gcp_iap.0.6.2.yaml"
kfctl init ${KFAPP} --project=${PROJECT} --config=${CONFIG} -V
# Alternatively, run these commands if you want to use basic authentication:
#export CONFIG="https://raw.githubusercontent.com/kubeflow/kubeflow/cfb336b7/bootstrap/config/kfctl_gcp_basic_auth.0.6.2.yaml"
#kfctl init ${KFAPP} --project=${PROJECT} --config=${CONFIG} -V --use_basic_auth

cd ${KFAPP}
kfctl generate all -V --zone ${ZONE}
kfctl apply all -V
