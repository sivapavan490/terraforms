# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "1.12.2"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
#   region = "us-east-1"
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}