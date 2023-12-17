variable "parameters" {
    default = [
        { name = "dev.rds.username", type = "string", value = "admin1"},
        { name = "dev.rds.password", type = "securestring", value = "ExpenseApp123"}
    ]
}
 