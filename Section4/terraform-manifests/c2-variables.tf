# input variables

#aws region 
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type = string
  default = "us-east-2"
}

#ec2 instance type

variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t2.micro"
    
}

#ec2 instance key pair 

variable "instance_keypair" {
    description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
    type = string
    default = "terraform-key"
}