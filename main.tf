resource "azurerm_resource_group" "lab" {
  name     = "rg-learngit-tf-demo"
  location = "eastus"

  tags = {
    managed_by = "terraform"
    course     = "module-4-cicd"
  }
}
