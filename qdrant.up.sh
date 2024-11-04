kubectl create namespace qdrant
helm repo add qdrant https://qdrant.to/helm
helm install qdrant qdrant/qdrant -f qdrant.values.yaml --namespace qdrant