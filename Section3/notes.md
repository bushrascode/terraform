# Lesson Notes

## Terraform Blocks 

- 🔷 1. Terraform Block
- It tells Terraform, which providers you need (like AWS, Azure, etc.), where to get them, which version to use (optional)

- 🔶 2. Provider Block
- This is where you tell Terraform how to connect to your cloud provider (like AWS), think of it like logging into you aws account

- 🟩 3. Resource Block
- This is where you define the actual thing you want to create — like an EC2 instance, S3 bucket, etc

- KEY: within a terraform block, only constant values can be used; arguments may not refer to named objects such as resources, input variables, etc and may not use any of the Terraform language built-in functions 
- aka The terraform block can only use hardcoded values, not anything dynamic like variables, resources, or even functions

## Terraform State
- The .tfstate file is where Terraform keeps track of what’s been created, what the real world looks like, and what changes need to be made (it is a bit like terraform's memory)
- the tf.state file can be stored locally (default location: terraform.tfstate in the working directory) OR Remotely (via a Backend block) Common remote backends: S3 (AWS), Azure Blob Storage, Google Cloud Storage

## Provider Block 
- 🌐 Terraform Providers are the heart of Terraform. They let Terraform interact with real-world infrastructure like AWS, Azure, GCP, etc.
- Every resource (like aws_instance, aws_s3_bucket) is implemented through a provider
- Terraform cannot manage infrastructure without a provider
- Providers are distributed separately from Terraform and have independent versioning and release cycles
- The Terraform Registry is a public directory where you can download provider plugins for major platforms
- terraform init downloads provider plugin from terraform registry to local machine -- these plugins are the modules are how terraform speaks to cloud via api calls 

