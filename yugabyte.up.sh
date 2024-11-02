kubectl create namespace yugabyte
helm repo add yugabytedb https://charts.yugabyte.com
helm install yugabyte yugabytedb/yugabyte \
--version 2024.1.3 \
-f yugabyte.values.yaml \
--namespace yugabyte