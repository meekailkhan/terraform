variable "usersage" {
  type = map
  default = {
    "meekail"= 21
    "mujaahid" = 26
  }
}
variable "name" {
  type = string
  default = "meekail"
}

output "printage" {
  value = "my name is ${var.name} and my age is ${lookup(var.usersage,var.name)}"
}