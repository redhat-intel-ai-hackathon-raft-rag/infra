helm uninstall qdrant --namespace qdrant
kubectl delete pvc --all --namespace qdrant
kubectl delete namespace qdrant