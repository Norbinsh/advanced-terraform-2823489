provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terrastate975"

  versioning {
    enabled = true
  }

}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terrastate975"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
