# By using this terrafrom files we will creatings ec2-instance along with security group.


resource "aws_instance" "main" {
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t2.micro"
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # here -1 represnts all the protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "security"
  }
}