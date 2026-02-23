variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The instance type to use for the EC2 instance"
}

variable "subnet_id" {
  type        = string
  description = "The subnet ID to launch the EC2 instance in"
}

variable "ec2_count" {
  type        = number
  description = "The number of EC2 instances to launch"
}

variable "env" {
  type        = string
  description = "The environment (e.g., dev, prod) for tagging the EC2 instance"
}