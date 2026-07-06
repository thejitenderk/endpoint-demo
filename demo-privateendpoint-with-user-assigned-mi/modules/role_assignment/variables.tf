variable "scope" {
  description = "The scope at which the role assignment applies"
  type        = string
}

variable "role_definition_name" {
  description = "The name of the Azure RBAC role"
  type        = string
}

variable "principal_id" {
  description = "The principal ID of the managed identity"
  type        = string
}
