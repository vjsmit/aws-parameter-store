  terraform {
    backend "s3" {
    bucket = "terraform-smit"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
    }
  } 