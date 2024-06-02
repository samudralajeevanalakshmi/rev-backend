variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region"
}

variable "mysql_admin_username" {
  description = "MySQL admin username"
  default     = "mysqladminun"
}

variable "mysql_admin_password" {
  description = "MySQL admin password"
  default     = "H@Sh1CoR3!"
}
