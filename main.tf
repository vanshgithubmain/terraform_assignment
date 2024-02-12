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



#COUNT
resource "aws_s3_bucket" "demo_bucket1" {

    count = length((var.bucket_list))
    bucket = var.bucket_list[count.index]

}

#FOR EACH
resource "aws_s3_bucket" "demo_bucket2" {
    

    for_each = toset(var.bucket_list2)
    bucket = each.key
   
}


