variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "The CIDR block for the subnet"
}

variable "subnet_az" {
  type        = string
  description = "The availability zone for the subnet"
}

variable "env" {
  type        = string
  description = "The environment (e.g., dev, prod) for tagging the VPC and subnet"
}
