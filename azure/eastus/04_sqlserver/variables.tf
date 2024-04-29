variable "sql_server_name" {
  default = "tf-sqlserver-1968"
}
variable "location" {
  default = "eastus"
}

variable "sql_server_version" {
  default = "12.0"
}

variable "admin_login" {
  description = "The administrator username of the SQL logical server."
  default = "adminuser"
}

variable "admin_password" {
  description = "The administrator password of the SQL logical server."
  default = "Aaa101101@"
}
variable "sql_db_name" {
  type        = string
  description = "The name of the SQL Database."
  default     = "DevDB"
}