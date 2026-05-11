provider "aws" {
    region = "eu-west-1"
}

terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.27.0"
    }
  }
}

terraform {
  backend "s3" {
    key            = "aws.multi.account.setup.tfstate"
    region         = "eu-west-1"
    encrypt        = true
  }
}
 