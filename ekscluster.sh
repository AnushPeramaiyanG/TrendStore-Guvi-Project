eksctl create cluster \
--name trend-cluster \
--region ap-south-1 \
--version 1.36 \
--nodegroup-name workers \
--node-type t3.medium \
--nodes 2 \
--nodes-min 2 \
--nodes-max 4 \
--managed
