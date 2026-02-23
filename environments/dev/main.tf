/*module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  subnet_az = "ap-south-1a"
  env = "dev"
}

module "ec2" {
  source = "../../modules/ec2"
  ami_id = "ami-019715e0d74f695be"
  instance_type = "t2.micro"
  subnet_id = module.vpc.subnet_id
  ec2_count = 1
  env = "dev"
}*/
