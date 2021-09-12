locals {

  attributes = concat(
    [
      {
        name = var.range_key
        type = var.range_key_type
      },
      {
        name = var.hash_key
        type = var.hash_key_type
      }
    ],
    var.dynamodb_attributes
  )
}

resource "aws_dynamodb_table" "default" {
  cidr_block = "10.0.0.0/16"
  hash_key   = var.hash_key
}