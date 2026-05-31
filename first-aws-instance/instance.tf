resource "aws_key_pair" "first-tf-key" {
  key_name   = "deployer-key"
  public_key = file("${path.module}/rsa.pub")
}


resource "aws_instance" "example" {
  ami                    = "ami-0e472ba40eb589f49"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.first-tf-key.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "first-tf-instance"
  }

  provisioner "file" {
    source      = "rsa.pub"
    destination = "/tmp/key.pub"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/rsa")
      host        = "http://localhost:4566"

    }
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  dynamic "ingress" {
    for_each = [22, 3306, 80, 443, 27017]
    iterator = port
    content {
      from_port        = port.value
      to_port          = port.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  tags = {
    Name = "allow_tls"
  }
}