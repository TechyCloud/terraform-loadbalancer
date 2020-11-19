#This Module Will Creating the ALB

module "module-loadbalancer" {
source = "../modules/module-loadbalancer"
VPC_ID = "${module.module-vpc_creation.VPC_ID}"
Subnet_1 = "${module.module-vpc_creation.public[1]}"
Subnet_2 = "${module.module-vpc_creation.private[0]}"
ALB_SG_Name = "Eig-ALB-SG"
ALB_Name = "Eig-ALB"
Environment_Name = "Staging"
target_group_name = "Eig-ALB-Target"
alb_target_port = "80"
target_helth_path = "/"
target_helth_port = "80"
alb_listener_port = "80"
alb_listener_protocol = "HTTP"
}
