helm uninstall yugabyte --namespace yugabyte
kubectl delete pvc --all --namespace yugabyte
kubectl delete namespace yugabyte