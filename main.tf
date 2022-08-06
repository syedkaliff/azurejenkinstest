terraform {
    required_providers  {
        azurerm =   {
            source  =   "hashicorp/azurerm"
        }
    }
    backend "azurerm" {
        resource_group_name  = "test"
        storage_account_name = "linemeducontainer"
        container_name       = "tffiles"
        key                  = "terraform.tfstate"
    }
}

# Provider Block

provider "azurerm" {
    version         =   "~> 2.0"
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    subscription_id =   var.subscription_id
    tenant_id       =   var.tenant_id
    
    features {}
}




provider "azuread" {
    version         =   ">= 0.11"
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    tenant_id       =   var.tenant_id
    alias           =   "ad"
}

resource "azurerm_resource_group" "example" {
    name  = "stoya"
    location = "North Europe"
}

