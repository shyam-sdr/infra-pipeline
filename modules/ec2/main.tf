resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.ec2_count

  tags = {
    Name = "${var.env}-ec2-instance-${count.index + 1}"
    Env  = var.env
  }
}