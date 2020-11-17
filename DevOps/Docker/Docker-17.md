## 2-3 gb in VM
ubuntu 180 MB
alipine 5MB   better performance 95% resource consumed by application
busy box 5MB
## NameSpace: 
## Control Group
##  Restart Policy 
[Docker restart policy](https://docs.docker.com/config/containers/start-containers-automatically/)
* docker container run -d -P nginx - 3 times
* eg: docker container run -d  -P --restart always nginx - 1 times 
## Docker Events
[docker events](https://docs.docker.com/engine/reference/commandline/events/)