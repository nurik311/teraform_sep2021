terraform {
    backend "s3" {
        bucket = "terraform-session-september-remote-backend"
        key = "session5/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-lock"
    }
}