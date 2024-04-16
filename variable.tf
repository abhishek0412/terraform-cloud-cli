variable "strResourceGroupName" {
  type        = string
  description = "Name of the resource group"
  default     = "rg-tf-module"

}

variable "strResourceGroupLocation" {
  default = "East US"

  validation {
    condition     = (var.strResourceGroupLocation == "East US" || var.strResourceGroupLocation == "eastus")
    error_message = "Policy doesn't allow any resource in other than East US"
  }

}

variable "myTag" {
  type        = map(string)
  description = "List of tags"
  default = {

    Environment = "Asia"
    Purpose     = "Terraform Cloud Services"
    Org         = "Terraform Cloud"
    Team        = "Classic"
    Notifications = true

  }
}