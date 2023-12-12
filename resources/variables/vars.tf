variable "sample1"{
    default = "hello"
} 
output "sample1"{
    value = var.sample1
}
variable "fruits"{
    default = ["apple","mango"]
}
 output "list_of_fruits"{
    value = var.fruits
}
variable "first_fruits"{
    default=["apple","mango"]
}
output "first_fruit_is" {
    value = var.fruits[0]
}
variable "fruits_with_quantity"{
    default={
        apple=1
        mango=2
        banana=3
    }
 }
 output "fruits_apple_quantity"{
    value=var.fruits_with_quantity["apple"]
 }
 output "fruits_list_name_with_apple_quantity"{
    value="fruits list with apple quantity ${var.fruits_with_quantity["apple"]}"
 }
