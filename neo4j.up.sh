helm repo add neo4j https://helm.neo4j.com/neo4j
kubectl create namespace neo4j
helm install neo4j-release neo4j/neo4j \
    -f neo4j.values.yaml \
    --namespace neo4j 