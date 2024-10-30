helm uninstall dragonfly
kubectl delete pvc --all --namespace dragonfly
kubectl delete namespace dragonfly