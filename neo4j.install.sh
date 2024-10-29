kubectl create namespace neo4j
helm install neo4j-release neo4j/neo4j --namespace neo4j -f neo4j.values.yaml