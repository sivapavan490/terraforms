# By using this terrafrom files we will creatings ec2-instance along with security group.


resource "aws_instance" "main" {
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t2.micro"
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" { # Terraform will give a keyword with the block name. You can iterate using block name. Here terraform block name is "INGRESS"
    
    for_each = var.ingress_ports # For iterating blocks purpose we are using for each loop.
    content {
        from_port   = ingress.value["from_port"] #Here ingress.value (ingress) is block name
        to_port     = ingress.value["to_port"]
        protocol    = ingress.value["protocol"]
        cidr_blocks = ingress.value["cidr_blocks"]
  }
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