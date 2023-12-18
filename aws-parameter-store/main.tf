terraform {
  backend "s3" {
    bucket = "terraform-remote-d76"
    key    = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "parameters" {
    default = [
        { name = "dev.rds.username", type = "string", value = "admin1"},
        { name = "dev.rds.password", type = "securestring", value = "ExpenseApp123"}
    ]
}

resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
}