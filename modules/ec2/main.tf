resource "aws_instance" "project_instance" {
  ami           = local.ami_id
  instance_type = var.ec2_instance_type
  key_name      = var.keyname

ebs_block_device {
    volume_size = 8
    volume_type = "gp3"
    device_name = "/dev/sda1"
  }



  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  
  associate_public_ip_address = true

  tags = {
    Name        = "${var.project_name}-ec2"
    Environment = var.environment
  }
}