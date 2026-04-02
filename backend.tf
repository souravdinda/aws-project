terraform {
  backend "s3" {
    bucket = "demo1bucket90"
    key    = "joel-hello/terraform.tfstate"
    region = "us-east-1"
  }
}