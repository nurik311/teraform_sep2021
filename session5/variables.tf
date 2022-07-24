

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

variable "sg_ports" {
  type = list(string)
  default = ["22", "80", "443", "3306", "5432"]
  description = "A list of ports to my security group"
}

variable "ports_cidr" {
  type = list(string)
  default = ["10.0.0.0/16", "0.0.0.0/0", "0.0.0.0/0", "10.0.0.0/16", "10.0.0.0/16"]
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
