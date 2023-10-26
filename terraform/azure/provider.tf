terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.77.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "auladetreino"
    # CRIAR UM GRUPO DE RECURSOS E COLOCAR O NOME DELE A CIMA (CRIE NA REGIAO DO BRASIL)
    storage_account_name = "auladeteste231"
    # CRIAR UM STORAGE ACCOUNT E COLOCAR O NOME DELE A CIMA
    container_name       = "tfstate"
    # CRIAR UM CONTAINER E COLOCAR O NOME DELE A CIMA
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  alias                      = "cloud"
}