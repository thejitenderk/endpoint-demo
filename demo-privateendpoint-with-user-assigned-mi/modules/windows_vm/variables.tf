variable "vm_name" {
  description = "The name of the Windows VM"
  type        = string
}


variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the Windows VM"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "vm_size" {
  description = "The size of the Windows VM"
  type        = string
}

variable "admin_username" {
  description = "The username for the admin account"
  type        = string
}

variable "admin_password" {
  description = "The password for the admin account"
  type        = string
}
