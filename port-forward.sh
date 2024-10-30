export POD_NAME=$(kubectl get pods --namespace yugabyte -l "app=yb-master" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace yugabyte port-forward $POD_NAME 7000:7000 &
export POD_NAME=$(kubectl get pods --namespace neo4j -l "app=neo4j" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace neo4j port-forward $POD_NAME 7474:7474 &
export POD_NAME=$(kubectl get pods --namespace qdrant -l "app=qdrant" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace qdrant port-forward $POD_NAME 6333:6333 &
export POD_NAME=$(kubectl get pods --namespace dragonfly -l "app.kubernetes.io/name=dragonfly" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace dragonfly port-forward $POD_NAME 6379:6379 &