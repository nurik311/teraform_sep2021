terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend"
    key            = "session7/frontend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}