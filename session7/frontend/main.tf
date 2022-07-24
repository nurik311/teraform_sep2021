resource "aws_instance" "1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = replace(local.name, "rtype", "EC2-1")
    Tags = local.common_tags

  }
}

resource "aws_instance" "2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = replace(local.name, "rtype", "EC2-2")
    Tags = local.common_tags

  }
}

resource "aws_instance" "3" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = replace(local.name, "rtype", "EC2-3")
    Tags = local.common_tags

  }
}