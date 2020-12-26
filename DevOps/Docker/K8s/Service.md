## Service
   1. ClusterIp: its like internal Loadbalancer(it works only within the network)
   2. NodePort: its expose outside(internet) indivisualIP:nodeport
   3. LoadBalancer:   


## conecpts
   1. pod
   2. rc
   3. rs
   4. deployment
   5. service
         1. ClusterIp
         2. NodePort
         3. Loadbalancer(NLB) 
   6. ingress controller (add on)
   7. daemonset
   8. statefulset
   9.  cron jobs
   10. config map and secret
   11. Helm and tiller :  package manager "helm install ingress-controller" 
   12. PVC  


## deploy application and assign CLusterIP 
## create ingress controller 
## Actvity 
   1. Deploy application using deployment 
   2. expose application using ingress-controler (http)
   3. secure application with https (jetstack and secret) , ssl/tls , self-signed and CA
   4. PVC 

## Service 
   1. clusterIP --> 
   2. NodePort 