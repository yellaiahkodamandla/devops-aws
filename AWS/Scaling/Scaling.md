## vertical scaling
   increase instance type
   it require downtime 
## Autoscaling
   cpu 75%  -- increase one machine
   cpu 40% -- remove one machine
   OR
   RAM 80% -- increase machine
   RAM 30% -- remove one machine
   steps:
     1. create Image
     2. Launch configuration 
     3. create Autoscaling Group 