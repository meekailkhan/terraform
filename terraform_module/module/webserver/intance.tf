resource "aws_instance" "name" {
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t2.micro"
}