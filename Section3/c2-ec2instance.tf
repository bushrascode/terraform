/*
block type - e.g. resource 
(top) block label - e.g. "aws instance" "ec2demo"
    - for resource block - you will have two block labels
    - for variables block - you will have one block label 
block inside block - provisioners, resource specific information like tags

- in below example name is a local block label

Resource Block Syntax
resource type - determines the kind of infrastructure object 
resource local name - how you refer to that aws resource so it can be referenced from elsewhere in the same terraform module
meta-arguments - adds specification to said resource 
resource-arguments - will be specific to resource type 

*/

resource "aws_instance" "myec2vm" {
  ami           = "ami-0fc32db49bc3bfbb1"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}