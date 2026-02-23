module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
  availability_zone = "${var.aws_region}a"
  env = "dev"
}

module "ec2" {
  source = "../../modules/ec2"
  ami_id = "ami-0317b0f0a0144b137" # Example AMI ID for Amazon Linux 2 in ap-south-1
  instance_type = "t3.micro"
  subnet_id = module.vpc.subnet_id
  ec2_count = 1
  env = "dev"
}