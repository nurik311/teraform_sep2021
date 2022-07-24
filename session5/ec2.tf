resource "aws_instance" "my_ec2" {
  ami                    = var.ami                       # Reference to input variable
  instance_type          = var.instance_type             # Reference to input variable
  vpc_security_group_ids = [aws_security_group.my_sg.id]# Reference to Resource
  # when you reference to resource = first-label.second-label.attribute

  tags = {
    Name = var.env
  }
}


# Argument when you create the resource 
# Attribute what this resource have
# reference doesnt need or use ""