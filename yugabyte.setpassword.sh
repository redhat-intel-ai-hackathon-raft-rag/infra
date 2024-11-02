RANDOM_POSTGRES_PASS=$(openssl rand -base64 32)
export POD_NAME=$(kubectl get pods --namespace yugabyte -l "app=yb-tserver" -o jsonpath="{.items[0].metadata.name}")
kubectl exec --namespace yugabyte -it $POD_NAME -- /home/yugabyte/bin/ysqlsh -c "\password"
kubectl exec --namespace yugabyte -it $POD_NAME -- /home/yugabyte/bin/ysqlsh -c "ALTER USER postgres with password '$RANDOM_POSTGRES_PASS';"
echo "Postgres password: $RANDOM_POSTGRES_PASS"