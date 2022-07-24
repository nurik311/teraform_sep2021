terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend"
    key            = "session6/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}