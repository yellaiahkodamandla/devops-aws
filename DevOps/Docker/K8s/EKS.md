## EKS 
   1. control plane managed by aws 

## SetUp of EKS Cluster 
   1. Launch linux machine 
   2. install Prerequisites
       1. aws cli (latest version)--- aws configure
       2. kubectl 
       3. eksctl 
   3. create eks cluster 
      ```
      eksctl create cluster \
        --name eks-practice \
        --version 1.18 \
        --region us-east-1 \
        --nodegroup-name linux-nodes \
        --nodes 2 \
        --nodes-min 2 \
        --nodes-max 2  \
        --with-oidc \
        --ssh-access \
        --ssh-public-key eks-cluster \
        --managed
        