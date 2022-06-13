# Output variables
# it can help you to print atributes

output "my_sg_id" {
  value = aws_security_group.my_sg.id
}