
resource "docker_container" "server" {
  image = docker_image.ubuntu.name
  name  = var.container_name

  tty        = true
  stdin_open = true

  volumes {
    volume_name    = docker_volume.shared_volume.name
    container_path = "/tmp"
    read_only      = var.is_readonly

  }

  provisioner "local-exec" {
    command = "echo 'run at start'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo 'run at the destroy'"
  }


  command = ["bash", "-f"]
}
