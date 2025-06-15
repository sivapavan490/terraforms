
variable "ami_id" {

  type    = string
  default = "ami-0b4f379183e5706b9"

}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}


variable "environment" {
  default = "dev"
}


variable "ec2_tags" {
  type = map(any)
  default = {
    project     = "expense"
    component   = "backend"
    environment = "dev"
    Name        = "expense-backend-dev"
  }
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name = "expense-backend-dev"
  }
}