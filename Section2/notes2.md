# Lesson Notes

## Terraform Language 

- code in the terraform language is stored in plain text files with the .tf extension
- you need to be in the terraform working directory where all the tf files are to run terraform commands

## Block Syntax

- Terraform code is made up of blocks.
- A block starts with a block type, followed by labels (optional), and a block body.

# Template
<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>"   {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}

# AWS Example
resource "aws_instance" "ec2demo" { # BLOCK
  ami           = "ami-04d29b6f966df1537" # Argument
  instance_type = var.instance_type # Argument with value as expression (Variable value replaced from varibales.tf
}

