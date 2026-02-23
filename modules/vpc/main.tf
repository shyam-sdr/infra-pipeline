resource "aws_default_vpc" "default" {
    cidr_block = var.vpc_cidr_block
    instance_tenancy = "default"

  tags = {
    Name = "${var.env}-default-vpc"
  }
}

resource "aws_subnet" "main" {
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
  vpc_id            = aws_default_vpc.default.id

  tags = {
    Name = "${var.env}-default-subnet"
  }
}

output "subnet_id" {
  value       = aws_subnet.main.id
  description = "The ID of the default subnet"
}
