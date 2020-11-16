## CMD and ENTRYPOINT 
  ``` 
  FROM ubuntu:16.04
  CMD ["echo","hello"]
  CMD ["echo","new"]
  ```
  * we can overriden 
  * CMD last one execute
  * ENTRYOINT first one execute
  ```
  FROM ubuntu:16.04
  ENTRYPOINT ["echo","hello"]
  ```

  ```
  step1: dockerfile
  step2: Buildimage
  step3: Pust to registry (dockerhub/Jfro/ECR)
  step4: image we use in kubernets deployment file  = kubernets 
  ```