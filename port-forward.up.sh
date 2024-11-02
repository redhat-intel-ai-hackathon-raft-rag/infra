export SVC_NAME=$(kubectl get svc --namespace yugabyte -l "app=yb-master" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace yugabyte port-forward svc/$SVC_NAME 7000:7000 &
export SVC_NAME=$(kubectl get svc --namespace yugabyte -l "app=yb-tserver" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace yugabyte port-forward svc/$SVC_NAME 5433:5433 &
export SVC_NAME=$(kubectl get svc --namespace neo4j -l "app=neo4j" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace neo4j port-forward svc/$SVC_NAME 7474:7474 7687:7687 &
export SVC_NAME=$(kubectl get svc --namespace qdrant -l "app=qdrant" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace qdrant port-forward svc/$SVC_NAME 6333:6333 &
export SVC_NAME=$(kubectl get svc --namespace dragonfly -l "app.kubernetes.io/name=dragonfly" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace dragonfly port-forward svc/$SVC_NAME 6379:6379 &