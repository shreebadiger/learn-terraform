terraform {
  backend "s3" {
    bucket = "terraform-remote-d76"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}