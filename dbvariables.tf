variable "table_name"{
    type = string
    default = "<%=customOptions.dynamoTableName%>"
}

variable "hash_key"{
    type = string
    default = "<%=customOptions.dynamoTableHashKey%>"
}

variable "hash_key_type"{
    type = string
    default = "<%=customOptions.dynamoTableHashKeyType%>"
}