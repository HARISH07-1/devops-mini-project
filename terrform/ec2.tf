resource "aws_instance" "app_server" {
  ami           = "ami-0f5ee92e2d63afc18" # Amazon Linux 2 (Mumbai)
  instance_type = "t2.micro"
  key_name      = "my-key"

  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "DevOps-Mini-Project"
  }
}
