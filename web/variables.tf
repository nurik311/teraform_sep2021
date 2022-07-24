variable "base_domain" {
  type    = string
  default = "nurik-cyber.com"
}

variable "env" {
  type    = string
  default = "dev"

}


variable "region" {
  type    = string
  default = "us-east-1"

}

variable "vpc_id" {
  type    = string
  default = "vpc-01d54c9554761be49"
}

variable "subnets" {
  type    = list(string)
  default = ["subnet-0363ba32df1afa3b4", "subnet-05f2b625d69995c84"]
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "asg_max" {
  type = number
  default = 5
}

variable "asg_desired" {
  type = number
  default = 3
}