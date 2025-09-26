# Input variables for EC2 setup

variable "ec2_instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-03aa99ddf5498ceb9"  # Ubuntu 22.04 LTS (Oregon)
}

variable "ec2_instance_type" {
  description = "EC2 instance type (e.g., t2.micro, t3.micro)"
  type        = string
  default     = "t3.micro"
}

variable "ec2_instance_storage" {
  description = "Root volume size in GB"
  type        = number
  default     = 10
}