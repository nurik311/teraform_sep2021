resource "aws_security_group" "my_sg" {
  name        = "SSH"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


  }


  egress {
    from_port        = 0    #all ports
    to_port          = 0    #all ports 
    protocol         = "-1" # TCP, UDP, ICMP (-1 = is way to tell TCP UDP ICMP)
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }


}



# "" = when you hard code
# No "" = when you reference
# [] = list

# list 