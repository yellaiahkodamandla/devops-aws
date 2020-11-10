## docker mode
   1. two types of modes 
       1. attach mode: logs are actively display in terminal , by default mode
       ```
       docker container run  -p 8080:8080 tomcat:8
       ``` 
       * if you press ctrl+C container will kill 
       2. dettached mode 
         ```
         docker container run -d -p 8080:8080 tomcat:8
         ```
     