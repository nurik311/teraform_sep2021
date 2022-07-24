resource "aws_security_group" "my_sg" {
  name        = "SSH"
  description = "Allow SSH inbound traffic" 
}

resource "aws_security_group_rule" "ingress_sg" {
  count = 5
  type              = "ingress"
  from_port         = element(var.sg_ports, count.index)
  to_port           = element(var.sg_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [element(var.ports_cidr, count.index)]
  security_group_id = aws_security_group.my_sg.id
}

resource "aws_security_group_rule" "egress_sg" {
  count = 5
  type              = "egress"
  from_port         = element(var.sg_ports, count.index)
  to_port           = element(var.sg_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_sg.id
}




# "" = when you hard code
# No "" = when you reference
# [] = list

# list 