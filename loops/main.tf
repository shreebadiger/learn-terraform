variable "instances" {
    default = ["frontend","backend","mysql"]
}
resource "null_resource" "sample"{
    count = length(var.instances)
}

variable "instances1" {
    default = {
        frontend = {
            Name = "frontend"
            instance_type = "t3.micro"
        }
        Backend = {
            Name = "backend"
            instance_type = "t3.micro"
        }
        mysql = {
            Name = " mysql"
            instance_type = "t3.micro"
        }
    }      
}
resource "null_resource" "sample1"{
    for_each = var.instances1
}
