terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}



resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

output "image_name" {
  value = docker_image.ubuntu.name
}