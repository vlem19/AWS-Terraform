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

resource "aws_dynamodb_table" "ddbtable" {
  cidr_block = "10.0.0.0/16"
  name           = var.table_name
  hash_key       = var.hash_key
  billing_mode   = "PROVISIONED"
  read_capacity  = 2
  write_capacity = 2
}