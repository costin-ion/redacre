# PART 1. 

# Getting Started with Docker-compose
    In order to run this aplication you must run "docker-compose up --build" command
    to access the aplication you should reach http://localhost/ or http://127.0.0.1:80
# For the web server I have added nginix.
    nginix will copy build contents each time the image is built, for this I have used multy-stage Dockerfile ./sys-stats/Dockerfile.

# please note: in order to use this aplication you must have docker installed.
    The code for this aplication is located here: https://github.com/costin-ion/redacre/tree/docker-compose

# PART 2. 

#### This project is for the Red Acre interview

LINK from route53: http://ioncostin.online/

#### Prerequisites

1. Have an [AWS Account](https://aws.amazon.com/).

2. Install [HashiCorp Terraform](https://www.terraform.io/downloads).

3. Have the [AWS CLI Installed](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

4. Create an [AWS IAM User](https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html) with Admin or Power User Permissions.
  - this user will only be used locally

5. [Configure the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) with the IAM User from Step 4.
  - Terraform will read your credentials via the AWS CLI 
  - [Other Authentication Methods with AWS and Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication)

LINK: http://ioncostin.online/

(I'm using a an external demo domain imported into Route53 and linked to the load balancer)

I have decided to use AWS Serverles model, using ECR, ECS, AWSVPC network, and FARGATE as a lunch type.

To see the teraform code

    terraform init
    teraform plan

To execute and build the infrastructure

    teraform apply

To destroy the entire infrastrucutre

    terraform destroy

Please note:

1. You must have AWS crendetials configured.

Set AWS Credentials in Windows PowerShell:

    $env:AWS_ACCESS_KEY_ID="xxxxxxxxxxxxxxxxx"
    $env:AWS_SECRET_ACCESS_KEY="yyyyyyyyyyyyyyyyyyyyyyyyyyyy"
    $env:AWS_DEFAULT_REGION="zzzzzzzzz"

Set AWS Credentials in Linux Shell:

    export AWS_ACCESS_KEY_ID="xxxxxxxxxxxxxxxxx"
    export AWS_SECRET_ACCESS_KEY="yyyyyyyyyyyyyyyyyyyyyyyyyyyy"
    export AWS_DEFAULT_REGION="zzzzzzzzz"

2. Docker images were uploaded directly from my laptop, 
    however we can create an EC2 machine with Jenkins that will automaticaly build images
    and upload the resulting images to our ECR reposotory.
    
# The code for this infrastructure is located here:
     https://github.com/costin-ion/redacre/tree/Terraform
    
# PART 3. 

Prerequisites to run kubernetes code:
1.	You should have minikube installed.
https://minikube.sigs.k8s.io/docs/start/
2.	You should have kubectl installed. 
In order to run .yaml file, we can use kubectl.exe apply -f .\sys-stats.yaml
In order to delete the entire deployment kubectl.exe delete -f .\sys-stats.yaml

Please note: LoadBalancer service type, can be accessed only from a cloud provider, therefore we must use the minikube environment to check if cluster is running. 
Since I’m using docker as a provider for the minikube, I can login into container using docker exec -it -u root <containerName> sh, and from here I can curl to the cluster IP on port 80. (to find service IP address, please user kubectl get services)

Files is located to the following link:  https://github.com/costin-ion/redacre/tree/docker-compose 
Please let me know when this assessment will be checked so I can destroy my AWS resources.


