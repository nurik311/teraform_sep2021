resource "aws_instance" "my_ec2" {
  count                  = var.number_of_ec2
  ami                    = data.aws_ami.amazon_linux2.image_id                 
  instance_type          = var.instance_type             # Reference to input variable
  vpc_security_group_ids = [aws_security_group.my_sg.id] # Reference to Resourceuser_data 
  user_data              = file("userdata.sh")

  tags = {
    Name = var.env
  }
}


# # bootstrap = happens just once
# # userdata = runs the script when your machine gets bootstrapped
# # [] =list
# # "" = hard coded values , string
# # () = functons
# var.env = variable
# aws_instance.ec2.id = Reference to resource