## Kubeadm 
   1. one master and 3 worker nodes 
   2. Instance types 
       * Master Node:  T2.medium 
       * Worker Nodes: T2.micro * 3
   
## Master Setup: 
   1. Install CRI
   2. Install Kubeadm, Kublet, Kubectl
   3. Run ```Kubeadm init``` 

Token: 
kubeadm join 172.31.11.160:6443 --token ronnnv.bzdx3l222xgohx40 \
    --discovery-token-ca-cert-hash sha256:4f4f5de5f672e7520748d58a781700d661e945cc5e741d44d66b5cd7cc8f8697  

## Worker Node: 
  1. Install CRI
  2. Install Kubeadm, Kubelet, Kubectl
  3. Run kubeadm join  
   