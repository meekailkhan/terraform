variable "age" {
  type = number
}

variable "username" {
  type = string
}



output "printdetail" {
  value = "username is ${var.username} and user age is ${var.age}"
}