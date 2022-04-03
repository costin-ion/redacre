# Getting Started with Docker-compose
    In order to run this aplication you must run "docker-compose up --build" command
    to access the aplication you should reach http://localhost/ or http://127.0.0.1:80
# For the web server I have added nginix.
    nginix will copy build contents each time the image is built, for this I have used multy-stage Dockerfile ./sys-stats/Dockerfile.

# Please note: in order to use this aplication you must have docker installed.
    The code for this aplication is located here: https://github.com/costin-ion/redacre/tree/docker-compose

# Prerequisites to run kubernetes code:

1.	You should have minikube installed.
https://minikube.sigs.k8s.io/docs/start/
2.	You should have kubectl installed. 
In order to run .yaml file, we can use kubectl.exe apply -f .\sys-stats.yaml
In order to delete the entire deployment kubectl.exe delete -f .\sys-stats.yaml

Please note: LoadBalancer service type, can be accessed only from a cloud provider, therefore we must use the minikube environment to check if cluster is running. 
Since I’m using docker as a provider for the minikube, I can login into container using docker exec -it -u root <containerName> sh, and from here I can curl to the cluster IP on port 80. (to find service IP address, please user kubectl get services)

Files is located to the following link:  https://github.com/costin-ion/redacre/tree/docker-compose 
Please let me know when this assessment will be checked so I can destroy my AWS resources.
