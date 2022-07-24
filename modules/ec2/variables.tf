variable "ami" {
  type        = string
  description = "This is an ami for EC2 INSTACE"

}

variable "instance_type" {
    type = string
    description = "This is size of the EC2 instance"
}

variable "env" {
    type = string
    description = "This represents the environment"
}

variable "bucket_name" {
  type = string
  description = "This is a storage bucket name"
}