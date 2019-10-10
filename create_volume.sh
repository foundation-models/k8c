#kubectl create -f volumes/glusterfs/glusterfs-endpoints.json
#kubectl create -f volumes/glusterfs/glusterfs-service.json
#kubectl create -f volumes/glusterfs/glusterfs-pod.json
#kubectl get endpoints

kubectl apply -f pv-volume.yaml #gce-pv.yaml
kubectl get pv task-pv-volume
kubectl apply -f pv-claim.yaml
kubectl get pvc task-pv-claim
kubectl apply -f pv-pod.yaml
kubectl get pod task-pv-pod
