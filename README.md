#### This project is for the Red Acre interview

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


