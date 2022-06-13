variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "This is cidr range for vpc"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "This isenvironnment specification"
}

variable "app" {
  type        = string
  default     = "web"
  description = "this represents the application name"
}
variable "pub_sub_1" {
  type        = string
  default     = "10.0.1.0/24"
  description = "this is cidr range for subnet"

}

variable "pub_sub_2" {
  type        = string
  default     = "10.0.2.0/24"
  description = "this is cidr range for subnet"
}

variable "pub_sub_3" {
  type        = string
  default     = "10.0.3.0/24"
  description = "this is cidr range for subnet"
}

variable "pri_sub_1" {
  type        = string
  default     = "10.0.11.0/24"
  description = "this is cidr range for subnet"
}
variable "pri_sub_2" {
  type        = string
  default     = "10.0.12.0/24"
  description = "this is cidr range for subnet"
}

variable "pri_sub_3" {
  type        = string
  default     = "10.0.13.0/24"
  description = "this is cidr range for subnet"
}