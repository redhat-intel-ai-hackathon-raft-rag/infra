kubectl create namespace dragonfly
helm upgrade \
    --version v1.24.0 \
    --install dragonfly oci://ghcr.io/dragonflydb/dragonfly/helm/dragonfly \
    --namespace dragonfly
# https://www.dragonflydb.io/docs/getting-started/kubernetes