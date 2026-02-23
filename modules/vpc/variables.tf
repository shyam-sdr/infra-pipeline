variable "vpc_cidr_block" {
  description = "CIDR block for the default VPC"
  type        = string
}

variable "env" {
  type        = string
  description = "The environment tag to assign to the VPC (e.g., dev, staging, prod)"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}