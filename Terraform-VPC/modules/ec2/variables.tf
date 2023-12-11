variable "sg_id" {
    description = "SG ID FOR EC2"
    type = string
  
}
variable "subnets" {
    description = "Subets for EC2"
    type = list(string)
  
}

variable "ec2_names" {
    description = "EC2 names"
    type = list(string)
    default = [ "WebServer1", "Webserver2"]
    
  
}