## Workloads
   1. Pod: Pod has a container(s)
       * DisAdv: 1. it doesnt have selfhealing 
   2. Replication controller: 
       * Its not maintain Versioning 
       * gol --> gol1 --> gol
   3. Replicaset: it maintain Versioning 
       * gol --> gol1 gol1 --> gol
   4. Deployment: (replicaset) 
       * By using Deployment we can deploy newer version and rollback to older version without any downtime 
       * Deployment internally using Replicaset 
   5. Service: 
       1. clusterIp
       2. NodePort
       3. Loadbalancer 