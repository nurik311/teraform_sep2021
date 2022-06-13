resource "aws_instance" "first_ect2" {
  ami           = "ami-06eecef118bbf9259"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}






# There are 2 types of blocks
# - resource block = creates and manages the resources on cloud Environnment
# - data source block = fetch the data fro existing resource on Cloud Environment

# Each block has 2 labels 
# - first label = what kind of resource (Hey i want to work with this resource), predefined by Terraform
# - second label = logical name or ID to your block, defined by Author and it has to be unique all across blocks

#Argument = Key/Value pairs
# Key = predefined by Terraform 
# Value = defined by Author



# Terraform has Plugin based architecture