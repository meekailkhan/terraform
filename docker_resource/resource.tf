module "ubuntu" {
  source         = "./module/image"
  container_name = var.container_name
  is_readonly    = true
}

output "printname" {
  value = "server created successfully with name of ${module.ubuntu.created_container}"
}