terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend"
    key            = "session8/backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}