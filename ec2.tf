resource "aws_instance" "web" {
  ami                    = "ami-0c1c30571d2dae5c9"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web.id]

  tags = {
    Name = "terraform-web-server"
  }
}