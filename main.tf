provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.profile}"
}
resource "aws_dynamodb_table" "dynamodb_lock" {
  name = "${var.dynamodb_name}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags {
    name         = "${var.dynamodb_name}"
  }

}
