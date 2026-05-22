output "joinblock" {
  value = "users are ${join("--->",var.users)}"
}

output "lowerblock" {
  value = "lower name of user is ${lower(var.users[1])}"
}

output "upperblock" {
  value = "upper name of user is ${upper(var.users[0])}"
}

output "titleblock" {
  value = "the title of user is ${title(var.users[2])}"
}