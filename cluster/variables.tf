variable "agent_count" {
  default = 1
}

# Set the values for these variables in terraform.tfvars
variable "aks_service_principal_app_id" {
  default = ""
}

variable "aks_service_principal_client_secret" {
  default = ""
}

variable "admin_username" {
  default = "munara"
}

variable "cluster_name" {
  default = "project3"
}

variable "dns_prefix" {
  default = "aksk8s"
}

# # Refer to https://azure.microsoft.com/global-infrastructure/services/?products=monitor for available Log Analytics regions.
# variable "log_analytics_workspace_location" {
#   default = "West Europe"
# }

# variable "log_analytics_workspace_name" {
#   default = "testLogAnalyticsWorkspaceName"
# }

# # Refer to https://azure.microsoft.com/pricing/details/monitor/ for Log Analytics pricing
# variable "log_analytics_workspace_sku" {
#   default = "PerGB2018"
# }

variable "resource_group_location" {
  default     = "Central US"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "cluster1"
  description = "Resource group name that is unique in your Azure subscription."
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}