resource "aws_dynamodb_table" "tf_locks" {
  name         = "${terraform.workspace}-tf-state"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "${terraform.workspace}-tf-state"
    Environment = terraform.workspace
  }
}

