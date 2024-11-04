## setup on the cloud

### setup kubectl and helm

```bash
./kube.sh
```

### setup a kubernetes cluster

follow the documents provided by cloud provider

### install components

```bash
./yugabyte.up.sh
./qdrant.up.sh
```

optionally

```bash
./neo4j.up.sh
./dragonfly.up.sh
```

### port-forward to local

```bash
./port-forward.up.sh
```

## setup in local

run postgres and qdrant docker by referencing their documents
