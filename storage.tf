resource "azurerm_storage_account" "stoacc"{
    name = "stoacc${var.project}${var.environment}"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    tags = var.tags
}

resource "azurerm_storage_container" "ca"{
    name = "files"
    container_access_type = "private"
    storage_account_id = azurerm_storage_account.stoacc.id
}

resource "azurerm_storage_queue" "qm"{
    name = "messagingsystem"
    storage_account_name = azurerm_storage_account.stoacc.name
}