kubectl create namespace yb-demo
helm install yb-demo yugabytedb/yugabyte \
--version 2.23.0 \
--set resource.master.requests.cpu=0.5,\
      resource.master.requests.memory=0.5Gi,\
      resource.tserver.requests.cpu=1.0,\
      resource.tserver.requests.memory=3.0Gi,\
      replicas.master=2,\   
      replicas.tserver=3 \
--namespace yb-demo