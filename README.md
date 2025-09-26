# Terraform AWS EC2 Nginx

This is a simple Terraform setup to provision an AWS EC2 instance running Nginx on Ubuntu. The project is meant for practicing infrastructure-as-code concepts and learning how to automate cloud resource provisioning.

### What It Does

- Creates a key pair for SSH access
- Uses the default VPC (for simplicity)
- Sets up a security group allowing HTTP, HTTPS, and SSH
- Launches an EC2 instance
- Installs Nginx using a user data script
- Outputs public/private IP and DNS after provisioning

### Prerequisites

- AWS credentials configured (via `aws configure` or environment variables)
- Terraform installed
- A public SSH key named `terra-key-ec2.pub` in the project root

### File Structure

<pre>
.
├── ec2.tf             # Main Terraform resources
├── variables.tf       # Input variables
├── outputs.tf         # Output values
├── providers.tf       # AWS provider block
├── terraform.tf       # Required providers & version constraints
├── simple_web.sh      # User data script to install Nginx
├── .gitignore         # Ignores state files, keys, and .terraform
└── README.md          # You're reading it
</pre>

### Notes

- This setup is for personal practice and demo purposes.
- The security group allows SSH from `0.0.0.0/0`  which is not safe for production environments.
- The default VPC is used to keep things simple, but in real-world scenarios you'd typically define your own VPC and networking.
