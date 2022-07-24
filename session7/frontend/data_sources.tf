data "terraform_remote_state" "rds" {
  backend = "s3"
  config = {
    bucket = "terraform-session-september-remote-backend"
    key    = "session7/backend/terraform.tfstate"
    region = "us-east-1"
  }
}