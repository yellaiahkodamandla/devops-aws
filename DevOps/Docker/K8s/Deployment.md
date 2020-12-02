## Deployment
   tomcat  --> Jenkins 
   kubectl set image deployment.v1.apps/deployment-app  appserver=jenkins --record=true

kubectl rollout status deployment.v1.apps/deployment-app
kubectl rollout history deployment.v1.apps/deployment-app
kubectl rollout undo deployment.v1.apps/deployment-app --to-revision=2


