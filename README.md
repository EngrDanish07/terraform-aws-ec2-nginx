# Terraform AWS EC2 Nginx
This project uses Terraform to provision a basic AWS EC2 instance running Nginx on Ubuntu. It's intended as a practice setup for infrastructure-as-code and cloud provisioning basics.

### What It Does
 - Creates a key pair for SSH access
 - Uses the default VPC (for simplicity)
 - Sets up a security group allowing HTTP, HTTPS, and SSH
 - Launches an EC2 instance
 - Installs Nginx using a simple shell script via `user_data`
 - Outputs public/private IP and DNS info after deployment

### Prerequisites
 - AWS account and credentials configured
 - Terraform installed
 - A valid public SSH key named `terra-key-ec2.pub` in the root directory

### File Structure
.
├── ec2.tf               # Main Terraform resources
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── providers.tf         # AWS provider block
├── terraform.tf         # Required providers & version
├── simple_web.sh        # User data script to install Nginx
├── .gitignore           # Ignore sensitive/state files
└── README.md            # You're reading it

###Notes
 - This is for learning/demo purposes, not hardened for production use.
 - The security group allows SSH from anywhere (0.0.0.0/0). Avoid that in real projects.
