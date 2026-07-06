variable "rgs" {

}

variable "vnets" {

}

variable "subnets" {
}

variable "stgaccounts" {

}

variable "windows_vms" {

}


variable "private_endpoints" {

}

variable "pdzs" {

}

variable "role_assignments" {
  description = "Role assignments for VM managed identities"
  type        = map(any)
}