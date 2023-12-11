variable "sg_id" {
    description = "SG ID FOR application load balancer"
    type = string
  
}

variable "subnets" {
    description = "Subnets for alb"
    type = list(string)
  
}
variable "vpc_id" {
    description = "VPC ID FOR ALB"
    type = string
}
variable "instances" {
    description = "inctance ID for targer group attacment"
    type = list(string)
  
}