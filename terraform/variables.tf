variable "pf_admin_url" {
  type        = string
  description = "PingFederate admin base URL"
}

variable "pf_username" {
  type        = string
  description = "PingFederate admin username"
  sensitive   = true
}

variable "pf_password" {
  type        = string
  description = "PingFederate admin password"
  sensitive   = true
}

variable "pf_product_version" {
  type        = string
  description = "PingFederate product version"
}

variable "pingfederate_administrative_account_password" {
  type        = string
  description = "Sample Admin Password"
}

variable "ping_directory_hosts" {
  type        = string
  description = "PD host"
}

variable "pingdirectory_bind_dn" {
  type        = string
  description = "User DN"
}

variable "pingdirectory_bind_dn_password" {
  type        = string
  description = "PD password"
}
