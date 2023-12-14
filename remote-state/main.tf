terraform {
  backend "s3" {
    bucket = "terraform-remote-d76"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

remote "null_resource" "test" {}