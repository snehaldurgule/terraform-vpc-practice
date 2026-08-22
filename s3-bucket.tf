resource "aws_s3_bucket" "prod" {

    bucket = "s3-bucket-terraform-22aug" #name of s3 bucket should be unique across all AWS accounts
  
}

resource "aws_s3_bucket" "dev" {

    bucket = "dev-alias-s3-bucket-22aug"
}