variable "sample1" {
    default = "hello"
} 

output "sample1"{
    value = var.sample1
}

variable "fruits"{
    default = ["apple","mango"]
}
 output "list of fruits" {
    value = var.fruits
 }