



variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "This is an instance type for EC2"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "This is variable for the environments"
}

variable "number_of_ec2" {
  type        = number
  default     = "1"
  description = "number of EC2 incances"
}

# Default = pick this as a default value
###### Type#####
# - string = !@#$%^&*(),123131, anything on your keyboard
# - number = 1234...
# - bool = True, False
######## Description ######
# Better enginering
