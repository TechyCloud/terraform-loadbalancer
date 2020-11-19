# terraform-loadbalancer

The terraform module which creates the **ALB**(Application LoadBalancer) with Listener and Target in single command.

## Prerequisites
- Terraform v0.13.5
- AWS CLI
- IAM Access Key & Secret Key

**This module will launching the below resources as per given veriables in the AWS console.**
- ALB
- Listener Path & Port
- Target Group

## Usage
You can download terraform code [here](https://github.com/TechyCloud/terraform-loadbalancer/archive/main.zip) to setup the ALB with target.

Once downloaded you can update the below vaiables in **main.tf** file on **tf_loadbalancer** folder. 

```
VPC_ID = "vpc-a8####"
Subnet_1 = "subnet-c1####"
Subnet_2 = "subnet-c1####"
ALB_SG_Name = "ALB-SG"
ALB_Name = "ALB-Name"
Environment_Name = "Staging"
target_group_name = "ALB-Target"
alb_target_port = "80"
target_helth_path = "/"
target_helth_port = "80"
alb_listener_port = "80"
alb_listener_protocol = "HTTP"
```

The code is ready to launch the resources after updating the variabls in **main.tf** file. 

You can run the below command to initialize the configuration before going to apply the changes in **tf_loadbalancer** directory.

> terraform init

Once succeed the above command, You can run the below apply command to launch the resouces in console. For this step, Please keep it ready IAM user access and secret key to apply the changes.   

> terraform apply


**!! Once the command is succeed, You have successfully configured ALB with terraform !!**

###### Thanks for using this Block.
