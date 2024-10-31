helm uninstall neo4j-release --namespace neo4j
kubectl delete pvc --namespace neo4j --all 
kubectl delete namespace neo4j