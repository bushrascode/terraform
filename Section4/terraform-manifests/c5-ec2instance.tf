# EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id   ]
  tags = {
    "Name" = "EC2 Demo 2"
  }
}

// 💡 EC2 Resource Requires the AMI ID — Not the Whole Data Block
// From this whole data.aws_ami.amzlinux2 object, give me just the id, because that’s what the EC2 ami argument expects
// When you create a resource or fetch a data source, it comes with attributes, and those can be passed to other resources, used in outputs, used in conditions, or even used to name things dynamically.

