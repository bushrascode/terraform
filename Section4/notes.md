## Terraform concepts: input variables, output variables, datasources 

- Create a terraform-key in AWS EC2 Key pairs which we will reference in our EC2 Instance
- An EC2 key pair is a set of two cryptographic keys — one public, one private — used to securely access an EC2 instance via SSH (i.e. remote login from your terminal)

# Terraform variables 
- 1: Input Variables 
- Input variables in Terraform are like parameters — they let you pass in different values without changing your code (like arguments in functions)


# Networking basics 

# 🧠 Part 1: What Is Networking (At a Basic Level)?
Imagine your EC2 instance is like a house 🏠
- It has a door people can knock on (called a port)
- It has an address so people know where to find it (called an IP address)
- It might have a gate/fence that only lets certain people in (this is your firewall, or in AWS, a Security Group)

# 🛡️ What Is a Security Group?
- A Security Group in AWS is a virtual firewall attached to your EC2 instance.
- It controls what kind of traffic is allowed into your instance (inbound)
- And what’s allowed out of your instance (outbound)
- You need a security group so your EC2 isn’t exposed to the entire internet in a dangerous way.

# 🔁 What Are ingress and egress?
- ingress - traffic coming in
- egress - Traffic going out

# 💡 What Is a "Port"?
- A port is like a specific door on your computer/server
- Each service listens on a certain port:

| Port | Used For | Description |
| :---         |     :---:      |          ---: |
| 22   | SSH     | Remote Terminal login    |
| 80     | HTTP       | Basic Websites      |
| 443     | HTTPS       | Secure Websites      |

# 🔤 What Is a Protocol (like TCP)?
- A protocol is just a rule for how computers talk.
- TCP = Most common protocol, used for reliable communication (like websites, SSH)
- UDP = Faster but not guaranteed (used for things like games or video calls)

# 🌍 What Are CIDR Blocks?
- A CIDR block is a way to say "what IP addresses are allowed." (“Who’s allowed to talk to me?”)

| CIDR Block  | 	Who It Allows |
| ------------- | ------------- |
| 0.0.0.0/0  | Everyone (the whole internet) 🌍  |
| 192.168.1.1/32  | Only one device (a specific IP)  |
| 10.0.0.0/16  | A private internal network 🏡  |


# Terraform Datasource
- 📖 What Are Terraform Data Sources?
- Data sources let you fetch information about things that already exist — in AWS, or other Terraform configurations — without creating them
- Data sources allow data to be fetched or computed (means you can pull in data like, the latest AMI ID, secrets from a vault, the default VPC)
- Use of data sources allows a Terraform config to use info defined outside (...I didn’t create this VPC or AMI in my .tf files — but I still want to use it.)
- Maybe it was created in another Terraform module, manually in AWS Console, automatically by AWS 
- Each data resource is associated with a single data source... aka each data block refers to one thing, like an AMI, subnet, or S3 bucket
- Terraform waits for data sources to be read before using them, if other resources depend on the data source, Terraform won’t try to use that resource until it has the data it needs
- You can manually control the order things happen with depends_on if needed — but 95% of the time, Terraform handles this for you
- You can use data source values inside other resources — like using the AMI ID fetched from a data source when launching an EC2
- If you have multiple AWS providers (like one for us-east-1, another for eu-west-1), you can tell a data source which one to use — just like with a resource.
- Data resources support count and for_each... producing an indexed result (you can loop over data sources just like resources)