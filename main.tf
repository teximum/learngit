resource "azurerm_resource_group" "lab" {
  name     = "rg-learngit-tf-demo"
  location = "eastus"

  tags = {
    managed_by = "terraform"
    course     = "module-4-cicd"
  }
}

resource "azurerm_storage_account" "demo" {
  name                     = "stlearngitdemo42"
  resource_group_name      = azurerm_resource_group.lab.name
  location                 = azurerm_resource_group.lab.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    managed_by = "terraform"
    course     = "module-5-cicd"
  }
}
