helm uninstall neo4j-release
kubectl delete pvc --all --namespace neo4j
kubectl delete namespace neo4j