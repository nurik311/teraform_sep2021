

variable "ami" {
  type = string
  default = "ami-06eecef118bbf9259"
  description = "This is an AMI id for EC2 instance, Accepted processor type 'x86"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
  description = "This is an instance type for EC2"
}

variable "env" {
  type = string
  default = "dev"
  description = "This is variable for the environments"
}

#  variable "number_of_ec2" {
#      type = number
#      default = "10"
#      description = "number of EC2 incances"
#  }

# Default = pick this as a default value
###### Type#####
# - string = !@#$%^&*(),123131, anything on your keyboard
# - number = 1234...
# - bool = True, False
######## Description ######
# Better enginering
