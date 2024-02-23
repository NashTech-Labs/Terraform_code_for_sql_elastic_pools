variable "name" {
  description = "Name of the Azure SQL Server"
}

variable "sql-rg" {
  type        = string
  description = "Resource group name where sql is created"
}

variable "size" {
  type        = number
  description = " The max data size of the elastic pool in gigabytes."
}

variable "capacity" {
  type        = string
  description = "The scale up/out capacity, representing server's compute units. For more information see the documentation for your Elasticpool configuration: vCore-based or DTU-based."
}

variable "min_capacity" {
  type        = string
  description = "The minimum capacity all databases are guaranteed."
}

variable "max_capacity" {
  type        = string
  description = "The maximum capacity any one database can consume."
}
