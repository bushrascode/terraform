# Terraform Output Values

# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.myec2vm.public_ip
}

# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.myec2vm.public_dns
}


/*
Output values are like return values from your Terraform code.
Once you run terraform apply, outputs let you see and share useful information — like:
The public IP of an EC2 instance

“Output values are like the return values of a Terraform module”
This means:
Just like how functions return values in programming,
Terraform modules can return outputs for you to see or use later

When your Terraform code finishes running, outputs are shown in your terminal 

If you're using modules, outputs are how you pass data out of the child and back into the parent.

You can share outputs between totally different Terraform projects by saving state remotely (like in an S3 bucket), then reading that output back using terraform_remote_state.



*/