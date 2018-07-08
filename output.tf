output "dynamodb_output" {
  value = "${aws_dynamodb_table.dynamodb_lock.arn}"
}
