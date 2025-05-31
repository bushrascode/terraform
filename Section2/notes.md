# Lesson Notes

## Terraform workflow - init / validate / plan / apply / destroy 

- init - used to initialise a working directory containing terraform config files + downloads providers
- validate - ensures terraform configuration files are syntactically valid and internally consistent 
- plan - terraform performs a refresh and determines what actions are necessary to achieve the desired state specified in config file
- apply - used to apply the changes required to reach the desired state of the configuration 
- destroy - used to destroy the terraform managed infrastructure 

Notes:
Every EC2 instance **must live inside a Virtual Private Cloud (VPC)** — it’s like a virtual home or network.
Every EC2 instance must live inside a VPC (Virtual Private Cloud). A VPC is like a virtual network — EC2s need one to exist so they know where they are, what IP address they get, and what security rules apply
An **AMI (Amazon Machine Image)** is like a pre-built template for your EC2 — it contains the operating system and software.

- **AMIs are region-specific** — an AMI ID in `us-east-1` does *not* work in `us-west-2`.
- Even if it’s the same OS (e.g., Amazon Linux), each region uses a **different AMI ID**.
- Using the wrong AMI for a region will cause Terraform to fail with an error.

🧠 **Bottom line**: Terraform can’t create an EC2 if it doesn’t know where to fetch the image from.

ami-0fc32db49bc3bfbb1
