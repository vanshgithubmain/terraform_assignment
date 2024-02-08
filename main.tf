terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA4MTWLFU22MQZMD7E"
  secret_key = "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"
}


# resource "aws_s3_bucket" "test" {
#   bucket = "myfirstbuckettss12"
# }

resource "aws_s3_bucket" "demo_bucket" {
    # using count

    count = length((var.bucket_list))
    bucket = var.bucket_list[count.index]

    # using for each

    # for_each = toset(var.bucket_list)
    # bucket = each.key
  
}
