variable "username" {
    type = string
    default = "Meekail"
    description = "Enter Your Username Here"
}



variable "age" {
    type = number
    validation {
      condition = var.age > 18
      error_message = "user must be 18 year old"
    }
}