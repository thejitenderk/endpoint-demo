variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the storage account."
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account. Valid values are 'Standard' and 'Premium'."
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account. Valid values are 'LRS', 'GRS', 'RAGRS', and 'ZRS'."
  type        = string
}

# variable "subnet_ids" {
#   description = "The IDs of the subnets to which the storage account will be restricted."
#   type        = list(string)
# }