variable "name" {
  default = "myTFVnet"
}

variable "address_space" {
  default = ["10.0.0.0/16"]
}

variable "location" {
  default = "eastus"
}

variable "subnet_name" {
  default = "TFsubnet"
}

variable "subnet_address_prefix" {
  default = "10.0.1.0/24"
}