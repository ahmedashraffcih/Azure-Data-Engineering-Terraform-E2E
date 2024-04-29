output "adls_account_name" {
  value = azurerm_storage_account.adls.name
}

output "adls_primary_access_key" {
  value = azurerm_storage_account.adls.primary_access_key
  sensitive = true
}